defmodule GravityAndCenter.C do
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
      "to crush the force of the repulsion"
      |> Messiaen.lengths(:en)
      |> Enum.with_index()
      |> Enum.group_by(fn {_, i} -> rem(i, 4) end)
      |> Enum.map(fn {_, v} -> Enum.map(v, &elem(&1, 0)) end)
      |> IO.inspect()

    max = Enum.map(parts, &Enum.sum/1) |> Enum.max()

    Enum.map(parts, fn els ->
      total = Enum.sum(els)
      factor = max / total
      Enum.map(els, &Float.round(&1 * factor, 2))
    end)
    |> IO.inspect()
  end

  def part_1_drawing do
    # lines =
    #   part_1()
    #   |> Enum.with_index()
    #   |> Enum.group_by(fn {_, i} -> rem(i, 4) end)
    #   |> Enum.map(fn {k, v} -> {k, Enum.map(v, &(elem(&1, 0) * 100))} end)
    #   |> IO.inspect()

    # lines = [
    #   {0, [900, 700, 500, 100, 400, 200, 200, 100]},
    #   {1, [400, 400, 100, 1100, 100, 400, 200, 700]},
    #   {2, [200, 400, 400, 200, 200, 400, 400]},
    #   {3, [200, 400, 200, 100, 400, 1100, 900]}
    # ]

    image =
      Xairo.Image.new(
        "c-part1.png",
        6400,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    # part_1()
    # [
    #   [10.0, 8.0, 5.0, 1.0, 4.0, 2.0, 2.0, 2.0],
    #   [4.0, 4.0, 3.0, 9.0, 1.0, 4.0, 2.0, 7.0],
    #   [3.0, 6.0, 6.0, 3.0, 4.0, 6.0, 6.0],
    #   [2.0, 4.0, 2.0, 2.0, 4.0, 12.0, 8.0]
    # ]
    [
      [19.0, 14.0, 10.0, 2.0, 8.0, 4.0, 4.0, 2.0],
      [8.0, 8.0, 5.0, 19.0, 2.0, 8.0, 4.0, 12.0],
      [6.0, 12.0, 12.0, 6.0, 8.0, 12.0, 10.0],
      [4.0, 8.0, 5.0, 3.0, 8.0, 21.0, 15.0]
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
