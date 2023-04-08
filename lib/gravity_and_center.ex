defmodule GravityAndCenter do
  def text do
    Path.join("priv", "poem.txt")
    |> File.read!()
    |> String.split("\n", trim: true)
  end

  def lengths(lang \\ :en) do
    text()
    |> Enum.map(&Messiaen.lengths(&1, lang))
  end
end
