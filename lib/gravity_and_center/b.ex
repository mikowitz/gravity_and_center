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
    MovementCalculator.beats_for(@optimal_beats_count - 19, (alto_count() - 19 * 4) * 2)
  end

  def divisions(:tenor) do
    MovementCalculator.beats_for(@optimal_beats_count - 14, (tenor_count() - 14 * 4) * 2)
  end

  def divisions(:bari) do
    MovementCalculator.beats_for(@optimal_beats_count - 10, (bari_count() - 10 * 4) * 2)
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
        "{",
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

      # |> Enum.reject(&(&1 == 0))
    end)
  end

  def talea_with_rests(talea) do
    Enum.chunk_every(talea, 2, 1, :discard)
    |> Enum.map(fn
      [0, x] -> [0, x]
      [x, _] -> x
    end)

    # Enum.reduce(talea, [], fn n, acc ->
    #   case n == 0 do
    #     true -> List.update_at(acc, -1, fn i -> {i, 0} end)
    #     false -> List.insert_at(acc, -1, n)
    #   end
    # end)
  end

  def talea_breakdown(talea) do
    total = Map.values(talea) |> Enum.sum()
    Enum.map(talea, fn {k, v} -> {k, v / total} end)
  end
end

# Notes:
# Total: ~4'
# constant stream, maybe building up from one instrument to all of them, that crests and fades out into multiphonics from at least each sax
# at one point towards the middle/end, layered multiphonics from everyone, then back to the normal pattern into C
# stream basis is generated from the MovementCalculator for each part, then common divisions are generated from the text (a couple different set,s faster and slower, to layer)
# pitch content is from (0,1,2,3,4,7) starting at T2 [g, af, a, bf, b, d] and rotating through T5-T9 (the transpositions that include D, one at each index)
