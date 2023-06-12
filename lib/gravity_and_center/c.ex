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

  first - mirrors the end of B, condensing to a single pitch
  l

  bach international

  second - opposite, spread out
  third - two sections (SA / TB) playing with overlaps, ending in evereyone playing their multiphonic
  """

  # Multiphonics
  # pierce (27) / 56 -> (83) -> 41/42
  # horse 21 / (65) -> (86) -> 43
  # whipped (25) / (81) -> -> (106) -> 53
  # man (13) / (28) -> 41 -> 20/(21)

  def round_for_drawing(part) do
    part
    |> Enum.map(&List.insert_at(&1, 0, 0))
    |> Enum.map(fn l -> Enum.scan(l, &(&1 + &2)) end)
    |> Enum.map(fn l ->
      Enum.map(l, &do_round_triplets/1)
    end)
  end

  def drawing_part_1 do
    image =
      Xairo.Image.new(
        "c-part1.png",
        3100,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      [0.0, 8.667, 15.5, 20.333, 21.333, 25.0, 27.0, 30.0],
      [0.0, 2.667, 8.333, 10.5, 13.667, 16.333, 19.0, 24.5, 30.0],
      [0.0, 3.5, 7.0, 8.0, 17.667, 18.5, 22.0, 23.667, 30.0],
      [0.0, 1.667, 5.5, 7.333, 8.5, 11.667, 18, 21.667, 30.0]
    ]
    |> Enum.map(fn line -> Enum.map(line, &(&1 * 100)) end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {line, y_offset}, image ->
      Enum.chunk_every(line, 2, 1, :discard)
      |> Enum.reduce(image, fn [start, stop], image ->
        image
        |> Xairo.rectangle({start, y_offset * 100}, stop - start, 100)
        |> Xairo.stroke()
      end)

      image
    end)

    image
    |> Xairo.Image.save()
  end

  def drawing_part_2 do
    image =
      Xairo.Image.new(
        "c-part2.png",
        4500,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      [0.0, 4.333, 16.0, 20.5, 24.667, 27.0, 29.0, 32.333, 38.333, 42.0],
      [0.0, 1.5, 7.667, 13.0, 18.667, 21.667, 23.333, 30.0, 40.5, 42.0],
      [0.0, 4.5, 8.0, 13.667, 14.667, 19.333, 28.333, 31.667, 34.0, 42.0],
      [0.0, 3.5, 12.333, 14.0, 18.0, 22.333, 25.5, 33.333, 35.0, 36.667, 42.0]
    ]
    |> Enum.map(fn line -> Enum.map(line, &(&1 * 100)) end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {line, y_offset}, image ->
      Enum.chunk_every(line, 2, 1, :discard)
      |> Enum.reduce(image, fn [start, stop], image ->
        image
        |> Xairo.rectangle({start, y_offset * 100}, stop - start, 100)
        |> Xairo.stroke()
      end)

      image
    end)

    image = Xairo.set_line_width(image, 5)

    Enum.reduce(0..45//4, image, fn x, image ->
      image
      |> Xairo.move_to({x * 100, 0})
      |> Xairo.line_to({x * 100, 400})
      |> Xairo.stroke()
    end)
    |> Xairo.Image.save()
  end

  def drawing_part_3 do
    image =
      Xairo.Image.new(
        "c-part3.png",
        8000,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      [
        0.0,
        3.0,
        6.5,
        13.333,
        17.0,
        21.0,
        22.0,
        23.333,
        26.0,
        30.0,
        40.333,
        41.667,
        45.5,
        49.0,
        51.0,
        54.5,
        56.0,
        60.0,
        63.0,
        67.0,
        76.0
      ],
      [
        0.0,
        5.333,
        7.0,
        12.333,
        13.667,
        14.667,
        23.0,
        31.5,
        34.5,
        37.0,
        38.333,
        43.667,
        48.5,
        50.0,
        56.667,
        58.333,
        66.667,
        68.333,
        70.667,
        73.0,
        76.0
      ],
      [
        0.0,
        2.0,
        6.0,
        7.667,
        14.0,
        22.5,
        26.333,
        28.0,
        32.0,
        41.0,
        42.0,
        43.0,
        44.0,
        55.0,
        # 57.0,
        61.0,
        64.0,
        69.0,
        71.0,
        72.0,
        76.0
      ],
      [
        0.0,
        4.0,
        13.0,
        24.0,
        25.5,
        29.333,
        33.0,
        34.0,
        35.0,
        36.0,
        40.0,
        44.667,
        48.0,
        52.0,
        53.0,
        58.0,
        59.0,
        68.0,
        70.0,
        76.0
      ]
    ]
    |> Enum.map(fn line -> Enum.map(line, &(&1 * 100)) end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {line, y_offset}, image ->
      Enum.chunk_every(line, 2, 1, :discard)
      |> Enum.reduce(image, fn [start, stop], image ->
        image
        |> Xairo.rectangle({start, y_offset * 100}, stop - start, 100)
        |> Xairo.stroke()
      end)

      image
    end)

    image
    |> Xairo.Image.save()
  end

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
      # factor = 64 / total
      factor = 30 / total
      # Enum.map(els, &Float.round(&1 * factor, 0))
      Enum.map(els, &Float.round(&1 * factor, 2))
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
      factor = 42 / total
      Enum.map(els, &Float.round(&1 * factor, 2))
    end)
    |> IO.inspect()
  end

  def part_3 do
    parts =
      "and my inner and outer worlds to pierce one another like a horse whipped by a man"
      |> Messiaen.lengths(:en)
      |> Enum.with_index()
      |> Enum.group_by(fn {_, i} -> rem(i, 4) end)
      |> Enum.map(fn {_, v} -> Enum.map(v, &elem(&1, 0)) end)
      |> IO.inspect()

    Enum.map(parts, fn els ->
      total = Enum.sum(els)
      factor = 76 / total
      Enum.map(els, &Float.round(&1 * factor, 2))
    end)
    |> IO.inspect()
  end

  def part_1_drawing do
    image =
      Xairo.Image.new(
        "c-part1.png",
        3400,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    # [
    #   # alto
    #   [19.0, 14.0, 10.0, 2.0, 8.0, 4.0, 4.0, 2.0],
    #   # soprano
    #   [8.0, 8.0, 5.0, 19.0, 2.0, 8.0, 4.0, 12.0],
    #   # baritone
    #   [6.0, 12.0, 12.0, 6.0, 8.0, 12.0, 10.0],
    #   # tenor
    #   [9.0, 8.0, 5.0, 3.0, 9.0, 15.0, 15.0]
    # ]
    # [
    #   [10.0, 7.0, 5.0, 1.0, 4.0, 4.0, 1.0],
    #   [4.0, 4.0, 1.0, 10.0, 1.0, 4.0, 2.0, 6.0],
    #   [3.0, 4.0, 6.0, 3.0, 5.0, 7.0, 4.0],
    #   [2.0, 4.0, 5.0, 1.0, 3.0, 10.0, 4.0, 3.0]
    # ]
    # [
    #   [8.71, 6.77, 4.84, 0.97, 3.87, 1.94, 1.94, 0.97],
    #   [3.53, 3.53, 0.88, 9.71, 0.88, 3.53, 1.76, 6.18],
    #   [2.73, 5.45, 5.45, 2.73, 2.73, 5.45, 5.45],
    #   [1.82, 3.64, 1.82, 0.91, 3.64, 10.0, 8.18]
    # ]
    # [
    #   [8.75, 6.75, 4.8, 1.0, 3.8, 2.0, 2.0, 1.0],
    #   [3.5, 3.5, 0.8, 9.75, 0.8, 3.5, 1.75, 6.2],
    #   [2.75, 5.5, 5.5, 2.75, 2.75, 5.5, 5.5],
    #   [1.8, 3.6667, 1.8, 1.0, 3.6667, 10.0, 8.2]
    # ]
    [
      [8.666666666666666, 6.666666666666667, 5.0, 1.0, 4.0, 2.0, 2.0, 1.0],
      [
        3.6666666666666665,
        3.6666666666666665,
        1.0,
        9.666666666666666,
        1.0,
        3.6666666666666665,
        1.6666666666666667,
        6.333333333333333
      ],
      [
        2.6666666666666665,
        5.333333333333333,
        5.333333333333333,
        2.6666666666666665,
        2.6666666666666665,
        5.333333333333333,
        5.333333333333333
      ],
      [
        1.6666666666666667,
        3.6666666666666665,
        1.6666666666666667,
        1.0,
        3.6666666666666665,
        10.0,
        8.333333333333334
      ]
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
        4500,
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
    # [
    #   # [6.0, 15.0, 6.0, 6.0, 3.0, 3.0, 1.0, 4.0, 13.0],
    #   # [2.0, 12.0, 9.0, 3.0, 2.0, 7.0, 7.0, 14.0, 2.0],
    #   # [4.0, 9.0, 5.0, 19.0, 4.0, 8.0, 2.0, 6.0],
    #   # [5.0, 4.0, 7.0, 1.0, 5.0, 7.0, 14.0, 3.0, 10.0]
    #   [6.0, 16.0, 6.0, 6.0, 3.0, 3.0, 4.0, 13.0],
    #   [2.0, 15.0, 8.0, 4.0, 2.0, 8.0, 15.0, 2.0],
    #   [5.7, 6.0, 6.0, 2.0, 6.0, 17.0, 3.0, 11.0],
    #   [5.0, 12.0, 2.0, 26.0, 2.0, 2.0, 7.0]
    # ]
    [
      [6.0, 12.0, 2.0, 4.0, 3.0, 3.0, 2.0, 11.0],
      [1.0, 11.0, 7.0, 3.0, 1.0, 6.0, 12.0, 2.0],
      [5.0, 3.0, 6.0, 2.0, 5.0, 12.0, 2.0, 8.0],
      [4.0, 9.0, 2.0, 19.0, 2.0, 2.0, 5.0]
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

  def part_3_drawing do
    image =
      Xairo.Image.new(
        "c-part3.png",
        7800,
        400
      )
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    part_3()
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

  def do_round_triplets(x) do
    [0, 0.333, 0.5, 0.6667, 1]
    # round(x * 3) / 3
    i = floor(x)
    rem = x - i

    case rem do
      r when r >= 0.8335 -> i + 1.0
      r when r >= 0.5835 -> i + 0.667
      r when r >= 0.4165 -> i + 0.5
      r when r >= 0.1665 -> i + 0.333
      _ -> i + 0.0
    end
  end

  def do_round(x) do
    i = floor(x)
    rem = x - i

    case rem do
      r when r >= 0.9 -> i + 1.0
      r when r >= 0.775 -> i + 0.8
      r when r >= 0.70835 -> i + 0.75
      r when r >= 0.6335 -> i + 0.6667
      r when r >= 0.55 -> i + 0.6
      r when r >= 0.45 -> i + 0.5
      r when r >= 0.36665 -> i + 0.4
      r when r >= 0.29165 -> i + 0.3333
      r when r >= 0.225 -> i + 0.25
      r when r >= 0.1 -> i + 0.2
      _ -> i + 0.0
    end
  end

  # [0, 0.2, 0.25 0.3333, 0.4, 0.5, 0.6, 0.6667, 0.75, 0.8, 1]
end

# Notes:
# total: ~3'15"
# builds up from B into a unison hold for "force of attraction"
# "force of repulsion" starts the same way but then disintigrates into multiphonics
# similar to A except with more "accompaniment" (multiphonics, different pitches)
