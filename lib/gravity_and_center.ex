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

  def illustrate(line_no, lang \\ :en, include_spaces \\ false) do
    line = Enum.at(text(), line_no - 1)

    lengths =
      case include_spaces do
        false -> generate_lengths_without_spaces(line, lang)
        true -> generate_lengths_with_spaces(line, lang)
      end

    lengths = normalize_lengths(lengths, 3600)

    image =
      Xairo.Image.new(
        "line#{line_no}-#{to_string(lang)}-#{inspect(include_spaces)}.png",
        3600,
        100
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    {image, _} =
      lengths
      |> Enum.with_index()
      |> Enum.reduce({image, 0}, fn {len, idx}, {image, offset} ->
        image = Xairo.rectangle(image, {offset, 0}, len, 100)

        image =
          case rem(idx, 2) == 0 do
            true -> Xairo.stroke(image)
            false -> Xairo.fill(image)
          end

        {image, offset + len}
      end)

    image
    |> add_ticks()
    |> Xairo.Image.save()
  end

  defp add_ticks(image) do
    image =
      image
      |> Xairo.set_source(Xairo.Rgba.new(0, 0.5, 1))
      |> Xairo.set_line_width(2)

    Enum.reduce(0..60, image, fn x, image ->
      Xairo.move_to(image, {x * 60, 0})
      |> Xairo.line_to({x * 60, 100})
    end)
    |> Xairo.stroke()
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

  defp normalize_lengths(lengths, total) do
    factor = total / Enum.sum(lengths)
    Enum.map(lengths, &round(&1 * factor))
  end
end
