defmodule GravityAndCenter.Utils do
  def round_to_tuplet_point(x) do
    frac = Float.round(x - floor(x), 4)

    rounded_frac =
      cond do
        frac >= 0.9 -> 1
        frac >= 0.775 -> 0.8
        frac >= 0.70835 -> 0.75
        frac >= 0.63335 -> 0.6667
        frac >= 0.55 -> 0.6
        frac >= 0.45 -> 0.5
        frac >= 0.3667 -> 0.4
        frac >= 0.2916 -> 0.3333
        frac >= 0.225 -> 0.25
        frac >= 0.1 -> 0.2
        true -> 0
      end

    floor(x) + rounded_frac
  end

  def normalize_lengths(lengths, total) do
    factor = total / Enum.sum(lengths)
    Enum.map(lengths, &round(&1 * factor))
  end

  def generate_lengths_without_spaces(line, lang) do
    line
    |> String.split(" ", trim: true)
    |> Enum.map(fn word ->
      Messiaen.lengths(word, lang) |> Enum.sum()
    end)
  end

  def generate_lengths_with_spaces(line, lang) do
    generate_lengths_without_spaces(line, lang)
    |> Enum.intersperse(Messiaen.length(?\s))
  end
end
