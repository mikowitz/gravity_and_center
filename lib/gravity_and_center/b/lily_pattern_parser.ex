defmodule GravityAndCenter.B.LilyPatternParser do
  def parse_pattern(pattern, sax) do
    Enum.map(pattern, fn {beat, total} ->
      Enum.map(beat, &to_lily(&1, total))
      |> beat_to_lily(total)
    end)
    |> beats_to_lily()
    |> write_to_file(sax)
  end

  def to_lily({n, o, m}, total), do: to_lily({n, o}, total) <> "^\\markup { #{m} }"

  def to_lily({n, "n"}, total), do: to_lily(n, total)

  def to_lily({n, "r"}, total) when n > total, do: "r4"
  def to_lily({n, "t"}, total) when n > total, do: "d4 ~"
  def to_lily(n, total) when is_integer(n) and n > total, do: "d4"

  def to_lily({total, "r"}, total), do: "r4"
  def to_lily({total, "t"}, total), do: "d4 ~"
  def to_lily(total, total) when is_integer(total), do: "d4"

  def to_lily({1, "r"}, total) when total < 4, do: "r8"
  def to_lily({1, "r"}, _), do: "r16"
  def to_lily({1, "t"}, total) when total < 4, do: "d8 ~"
  def to_lily({1, "t"}, _), do: "d16 ~"
  def to_lily(1, total) when total < 4, do: "d8"
  def to_lily(1, _), do: "d16"

  def to_lily({2, "r"}, total) when total < 4, do: "r4"
  def to_lily({2, "r"}, _), do: "r8"
  def to_lily({2, "t"}, total) when total < 4, do: "d4 ~"
  def to_lily({2, "t"}, _), do: "d8 ~"
  def to_lily(2, total) when total < 4, do: "d4"
  def to_lily(2, _), do: "d8"

  def to_lily({3, "r"}, _), do: "r8."
  def to_lily({3, "t"}, _), do: "d8. ~"
  def to_lily(3, _), do: "d8."

  def to_lily({4, "r"}, _), do: "r4"
  def to_lily({4, "t"}, _), do: "d4 ~"
  def to_lily(4, _), do: "d4"

  defp beat_to_lily(["d4" <> _ = quarter_note], _total), do: "  #{quarter_note}"
  defp beat_to_lily(["r4"], _total), do: "  r4"

  defp beat_to_lily(beat_components, 5) do
    "  \\tuplet 5/4 { #{Enum.join(beat_components, " ")} }"
  end

  defp beat_to_lily(beat_components, 4) do
    "  #{Enum.join(beat_components, " ")}"
  end

  defp beat_to_lily(beat_components, 3) do
    "  \\tuplet 3/2 { #{Enum.join(beat_components, " ")} }"
  end

  defp beats_to_lily(beats) do
    [
      "\\relative c' {",
      beats,
      "}"
    ]
    |> List.flatten()
    |> Enum.join("\n")
  end

  defp write_to_file(beats, sax) do
    File.open("priv/b/#{to_string(sax)}.ly", [:write], fn f ->
      IO.write(f, ~s(\\version "2.24.0"\n))
      IO.write(f, ~s(\\language "english"\n))
      IO.write(f, "\n")
      IO.write(f, beats)
    end)
  end
end
