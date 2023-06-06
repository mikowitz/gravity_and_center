defmodule GravityAndCenter.C do
  # [0,2,4,7,8]
  # [1,3,5,8,9]
  # [1, 3, 5, 8, 9, 7, 0, 11, 4]
  # [[1, 3, 5, 8, 9], [5, 7, 9, 0, 1], [9, 11, 1, 4, 5]]

  @moduledoc """
                              I want the force
  of attraction to crush the force of repulsion
  and my inner and outer worlds to pierce
  one another, like a horse whipped by a man.
  """

  def part_1 do
    parts =
      "I want the force of attraction"
      |> Messiaen.lengths(:en)
      |> Enum.with_index()
      |> Enum.group_by(fn {_, i} -> rem(i, 4) end)
      |> Enum.map(fn {_, v} -> Enum.map(v, &elem(&1, 0)) end)
      |> IO.inspect()

    # max = Enum.map(parts, &Enum.sum/1) |> Enum.max()

    Enum.map(parts, fn els ->
      total = Enum.sum(els)
      factor = 64 / total
      Enum.map(els, &Float.round(&1 * factor, 0))
    end)
    |> IO.inspect()
  end

  def part_2 do
    parts =
      "to crush the force of repulsion"
      |> Messiaen.lengths(:en)
      |> Enum.with_index()
      |> Enum.group_by(fn {_, i} -> rem(i, 4) end)
      |> Enum.map(fn {_, v} -> Enum.map(v, &elem(&1, 0)) end)
      |> IO.inspect()

    # max = Enum.map(parts, &Enum.sum/1) |> Enum.max()

    Enum.map(parts, fn els ->
      total = Enum.sum(els)
      factor = 56 / total
      Enum.map(els, &Float.round(&1 * factor, 0))
    end)
    |> IO.inspect()
  end

  def part_1_drawing do
    image =
      Xairo.Image.new(
        "c-part1.png",
        6500,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      # alto
      [19.0, 14.0, 10.0, 2.0, 8.0, 4.0, 4.0, 2.0],
      # soprano
      [8.0, 8.0, 5.0, 19.0, 2.0, 8.0, 4.0, 12.0],
      # baritone
      [6.0, 12.0, 12.0, 6.0, 8.0, 12.0, 10.0],
      # tenor
      [9.0, 8.0, 5.0, 3.0, 9.0, 15.0, 15.0]
    ]
    |> Enum.map(fn line -> Enum.map(line, &(&1 * 100)) end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {line, y_offset}, image ->
      {image, _} =
        Enum.reduce(line, {image, 0}, fn len, {image, start} ->
          image =
            Xairo.rectangle(image, {start, y_offset * 100}, len, 100)
            |> Xairo.stroke()

          {image, start + len}
        end)

      image
    end)

    image
    |> Xairo.Image.save()
  end

  def part_2_drawing do
    image =
      Xairo.Image.new(
        "c-part2.png",
        6000,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    # [
    #   [6.0, 15.0, 6.0, 6.0, 3.0, 3.0, 1.0, 4.0, 13.0],
    #   [2.0, 14.0, 7.0, 3.0, 2.0, 7.0, 7.0, 14.0, 2.0],
    #   [5.0, 4.0, 7.0, 1.0, 5.0, 5.0, 15.0, 3.0, 10.0],
    #   [4.0, 10.0, 2.0, 21.0, 2.0, 10.0, 2.0, 6.0]
    # ]
    [
      # [6.0, 15.0, 6.0, 6.0, 3.0, 3.0, 1.0, 4.0, 13.0],
      # [2.0, 12.0, 9.0, 3.0, 2.0, 7.0, 7.0, 14.0, 2.0],
      # [4.0, 9.0, 5.0, 19.0, 4.0, 8.0, 2.0, 6.0],
      # [5.0, 4.0, 7.0, 1.0, 5.0, 7.0, 14.0, 3.0, 10.0]
      [6.0, 16.0, 6.0, 6.0, 3.0, 3.0, 4.0, 13.0],
      [2.0, 15.0, 8.0, 4.0, 2.0, 8.0, 15.0, 2.0],
      [5.7, 6.0, 6.0, 2.0, 6.0, 17.0, 3.0, 11.0],
      [5.0, 12.0, 2.0, 26.0, 2.0, 2.0, 7.0]
    ]
    |> Enum.map(fn line -> Enum.map(line, &(&1 * 100)) end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {line, y_offset}, image ->
      {image, _} =
        Enum.reduce(line, {image, 0}, fn len, {image, start} ->
          image =
            Xairo.rectangle(image, {start, y_offset * 100}, len, 100)
            |> Xairo.stroke()

          {image, start + len}
        end)

      image
    end)

    image
    |> Xairo.Image.save()
  end
end

# Notes:
# total: ~3'15"
# builds up from B into a unison hold for "force of attraction"
# "force of repulsion" starts the same way but then disintigrates into multiphonics
# similar to A except with more "accompaniment" (multiphonics, different pitches)
