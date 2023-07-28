defmodule GravityAndCenter.F do
  @moduledoc """
                             I want nothing
  to reveal feeling but feeling—as in freedom,
  or the knowledge of peace in a realm beyond,
  or the sound of water poured in a bowl.
  """

  import GravityAndCenter.Utils, only: [normalize_lengths: 2]

  def line11 do
    build_line(11, 9, 3)
    |> draw(11)
  end

  def line12 do
    build_line(12, 8, 8)
    |> draw(12)
  end

  def line13 do
    build_line(13, 9, 8)
    |> draw(13)
  end

  def line14 do
    build_line(14, 9, 7)
    |> draw(14)
  end

  def draw(data, line_no) do
    image =
      Xairo.Image.new(
        "partf-#{line_no}.png",
        3700,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    image =
      data
      |> Enum.with_index()
      |> Enum.reduce(image, fn {line_data, i}, image ->
        line_data =
          line_data
          |> Enum.map(&round(&1 * 60))

        start_y = i * 100

        image =
          image
          |> Xairo.move_to({0, start_y})
          |> Xairo.line_to({3600, start_y})
          |> Xairo.stroke()

        Enum.reduce(line_data, image, fn x, image ->
          image
          |> Xairo.move_to({x, start_y})
          |> Xairo.line_to({x, start_y + 100})
        end)
        |> Xairo.stroke()
      end)

    image
    |> Xairo.move_to({3600, 100})
    |> Xairo.set_font_size(50)
    |> Xairo.text_path(to_string(line_no))
    |> Xairo.fill()
    |> Xairo.Image.save()
  end

  def build_line(line_no, chunk_length, overlap) do
    GravityAndCenter.text()
    |> Enum.at(line_no - 1)
    |> generate_lengths_without_spaces()
    |> List.flatten()
    |> Enum.chunk_every(chunk_length, overlap, :discard)
    |> Enum.take(4)
    |> Enum.map(fn part ->
      part
      |> normalize_lengths(3600)
      |> rounded_attack_points()
    end)
  end

  def rounded_attack_points(line) do
    # durations(line_no, lang, include_spaces)
    line
    |> Enum.map(&(&1 / 60))
    |> List.insert_at(0, 0.0)
    |> Enum.scan(&+/2)
    |> Enum.map(&GravityAndCenter.Utils.round_to_tuplet_point/1)
  end

  def generate_lengths_without_spaces(line, lang \\ :en) do
    line
    |> String.split(" ", trim: true)
    |> Enum.map(fn word ->
      Messiaen.lengths(word, lang)
    end)
  end

  def generate_lengths_with_spaces(line, lang \\ :en) do
    generate_lengths_without_spaces(line, lang)
    |> Enum.intersperse(Messiaen.length(?\s))
  end
end

# Notes:
# Total: ~3'15"
# "nothing" is a long silence. longest in the piece, or at least since the opening
# after that, similar to the beginning, solo on a single pitch, like A and C but with a bit more background
# "sound of water poured into a bowl" - airy sounds with a bit of pitch? multis based on mapping of alphabet to sax keys?
# actually use water bowls? (without being twee)
