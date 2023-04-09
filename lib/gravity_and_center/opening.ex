defmodule GravityAndCenter.Opening do
  def durations(line_no, lang \\ :en, include_spaces \\ false) do
    line = Enum.at(GravityAndCenter.text(), line_no - 1)

    lengths =
      case include_spaces do
        false -> generate_lengths_without_spaces(line, lang)
        true -> generate_lengths_with_spaces(line, lang)
      end

    normalize_lengths(lengths, 3600)
  end

  def rounded_attack_points(line_no, lang \\ :en, include_spaces \\ false) do
    durations(line_no, lang, include_spaces)
    |> Enum.map(&(&1 / 60))
    |> List.insert_at(0, 0.0)
    |> Enum.scan(&+/2)
    |> Enum.map(&GravityAndCenter.Utils.round_to_tuplet_point/1)
  end

  defp normalize_lengths(lengths, total) do
    factor = total / Enum.sum(lengths)
    Enum.map(lengths, &round(&1 * factor))
  end

  defp generate_lengths_without_spaces(line, lang) do
    line
    |> String.split(" ", trim: true)
    |> Enum.map(fn word ->
      Messiaen.lengths(word, lang) |> Enum.sum()
    end)
  end

  defp generate_lengths_with_spaces(line, lang) do
    generate_lengths_without_spaces(line, lang)
    |> Enum.intersperse(Messiaen.length(?\s))
  end
end
