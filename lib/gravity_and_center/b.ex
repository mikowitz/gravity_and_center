defmodule GravityAndCenter.B do
  @text """
               The words, like moist fingers,
  appear before me full of promise but then run away
  to a narrow black room that is always dark,
  where they are silent, elegant, like antique gold,
  devouring the thing I feel.
  """
  @optimal_beats_count 316

  import GravityAndCenter.Utils
  alias GravityAndCenter.MovementCalculator

  def text, do: String.trim(@text) |> String.replace("\n", " ")

  def sop_count, do: generate_lengths_with_spaces(text(), :en) |> Enum.sum()
  def alto_count, do: generate_lengths_without_spaces(text(), :en) |> Enum.sum()
  def tenor_count, do: generate_lengths_without_spaces(text(), :fr) |> Enum.sum()
  def bari_count, do: generate_lengths_with_spaces(text(), :fr) |> Enum.sum()

  def optimal_beats_count do
    MovementCalculator.optimal_beats_count([
      sop_count(),
      alto_count(),
      tenor_count(),
      bari_count()
    ])
  end

  def divisions(:sop) do
    MovementCalculator.beats_for(@optimal_beats_count, sop_count() * 2)
  end

  def divisions(:alto) do
    MovementCalculator.beats_for(@optimal_beats_count, alto_count() * 2)
  end

  def divisions(:tenor) do
    MovementCalculator.beats_for(@optimal_beats_count, tenor_count() * 2)
  end

  def divisions(:bari) do
    MovementCalculator.beats_for(@optimal_beats_count, bari_count() * 2)
  end

  def divisions_ly(sax) do
    content =
      divisions(sax)
      |> Enum.map(fn
        3 -> "  \\tuplet 3/2 { c8 c8 c8 }"
        4 -> "  c16 c16 c16 c16"
        5 -> "  \\tuplet 5/4 { c16 c16 c16 c16 c16 }"
      end)
      |> Enum.join("\n")

    contents =
      [
        ~s(\\version "2.24.1"),
        ~s(\\language "english"),
        "",
        "\\header {",
        " title = \"#{sax}\"",
        "  tagline = ##f",
        "  instrument = \"#{sax}\"",
        "}",
        "",
        "\\new RhythmicStaff {",
        content,
        "}"
      ]
      |> Enum.join("\n")

    File.write("priv/b/#{sax}.ly", contents)
  end

  def talea(mod) do
    text()
    |> String.split(",", trim: true)
    |> Enum.map(fn seg ->
      seg
      |> String.replace(" ", "")
      |> Messiaen.lengths()
      |> Enum.map(&rem(&1, mod))
    end)
  end

  def talea_with_rests([h | talea]) do
    Enum.reduce(talea, [h], fn n, [p | acc] ->
      case p do
        0 -> [{0, n} | acc]
        _ -> [n, p | acc]
      end
    end)
    |> Enum.reverse()
    |> Enum.reject(&(&1 == {0, 0}))
  end

  def reduce_talea(talea, amount) do
    Enum.map(talea, &max(&1 - amount, 0))
  end

  def reduce_talea2(talea, 0), do: talea

  def reduce_talea2(talea, amount) do
    reduce_talea2(Enum.reject(talea, &(&1 == 0)) |> Enum.map(&(&1 - 1)), amount - 1)
  end

  def augment_talea(talea, amount, max \\ 5) do
    Enum.map(talea, &min(&1 + amount, max))
  end

  def talea_breakdown(talea) do
    total = Map.values(talea) |> Enum.sum()
    Enum.map(talea, fn {k, v} -> {k, v / total} end)
  end

  @talea_indices [
    {5, 0},
    {0, 0},
    {4, 0},
    {1, 0},
    {0, -1},
    {3, 0},
    {3, -1},
    {4, -1},
    {4, -2},
    {1, -1},
    {3, -2},
    {4, -3},
    {5, -1},
    {0, -2},
    {1, -2},
    {4, -4},
    {5, -2},
    {5, -3},
    {1, -3},
    {6, 0},
    {6, -1},
    {4, 0},
    {3, -3},
    {4, 1},
    {0, -3},
    {1, -4},
    {1, 0},
    {4, 2},
    {0, -4},
    {3, -4},
    {1, 1},
    {4, 3},
    {5, -4},
    {0, 0},
    {3, 0},
    {5, 0},
    {5, 1},
    {6, -2},
    {0, 1},
    {5, 2},
    {1, 2},
    {3, 1},
    {0, 2},
    {5, 3},
    {1, 3},
    {6, -3},
    {0, 3},
    {6, -4},
    {3, 2},
    {6, 0},
    {6, 1},
    {3, 3},
    {6, 2},
    {6, 3}
  ]

  # "5,0,4,1,0,3,3,4,4,1,3,4,5,0,1,4,5,5,1,6,6,4,3,4,0,1,1,4,0,3,1,4,5,0,3,4,5,4,5,6,4,4,0,5,1,3,0,5,1,4,4,1,6,5,5,0,4,6,3,6,6,0,1,0,3,5,0,0,6,0,3,3,0,1,1,4,0,3,3,0,0,5,5,0,0,5,1,4,0,4,1,0,3,4,3,0,3,3,1,0,4,3,4,5,0,4,3,0,3,4,4,1,4,4,6,5,4,4,4,6,0,6,5,4,1,3,4,0,6,5,1,6,4,6,0,4,3,3,4,0,0,6,3,1,6,6,5,0,4,5,0,1,6,6,1,5,4,4,4"
  #
  def talea_indices, do: @talea_indices

  def used_taleas do
    talea(6) |> List.delete_at(2)
  end

  def get_talea(index), do: talea(6) |> Enum.at(index)

  def full_talea_patterns do
    talea_indices()
    |> Enum.map(fn {talea_index, modification} ->
      modify_talea(get_talea(talea_index), modification)
    end)
  end

  def write_talea_pattern_to_file do
    File.open("priv/b/talea_pattern.txt", [:write], fn file ->
      full_talea_patterns()
      |> Enum.map(&talea_with_rests/1)
      |> Enum.each(&IO.write(file, "#{inspect(&1)}\n"))
    end)
  end

  defp modify_talea(talea, n) do
    case n < 0 do
      true -> reduce_talea2(talea, abs(n))
      false -> augment_talea(talea, n)
    end
  end
end

# Notes:
# Total: ~4'
# constant stream, maybe building up from one instrument to all of them, that crests and fades out into multiphonics from at least each sax
# at one point towards the middle/end, layered multiphonics from everyone, then back to the normal pattern into C
# stream basis is generated from the MovementCalculator for each part, then common divisions are generated from the text (a couple different set,s faster and slower, to layer)
# pitch content is from (0,1,2,3,4,7) starting at T2 [g, af, a, bf, b, d] and rotating through T5-T9 (the transpositions that include D, one at each index)
