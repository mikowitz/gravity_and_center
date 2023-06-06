defmodule GravityAndCenter.B.Canon do
  @factor 10

  def percentages do
    base = [5, 5, 5, 4, 5, 4, 4, 4, 3, 4, 3, 3, 3, 2, 3, 2, 2, 2]

    # ([
    #    %{5 => [5]},
    #    %{5 => [5, 5]},
    #    %{5 => [5, 5, 5]},
    #    %{5 => [5, 5, 5], 4 => [4]},
    #    %{5 => [5, 5, 5, 5], 4 => [4]},
    #    %{5 => [5, 5, 5, 5], 4 => [4, 4]},
    #    %{5 => [5, 5, 5, 5], 4 => [4, 4, 4]},
    #    %{5 => [5, 5, 5, 5], 4 => [4, 4, 4, 4]},
    #    %{5 => [5, 5, 5, 5], 4 => [4, 4, 4, 4], 3 => [3]}
    #    | Enum.chunk_every(base, 10, 1)
    #      |> Enum.map(fn l -> Enum.group_by(l, & &1) end)
    #  ] ++
    #    [
    #      # %{2 => [2, 2, 2, 2], 3 => [3]},
    #      # %{2 => [2, 2, 2, 2, 2]},
    #      # %{2 => [2, 2, 2, 2]},
    #      # %{2 => [2, 2, 2]},
    #      # %{2 => [2, 2]}
    #    ])
    ([
       [5, 5, 5],
       [5, 5, 5, 4],
       [5, 5, 5, 4, 5],
       [5, 5, 5, 4, 5, 4],
       [5, 5, 5, 4, 5, 4, 4],
       [5, 5, 5, 4, 5, 4, 4, 4],
       [5, 5, 5, 4, 5, 4, 4, 4, 3]
       | Enum.chunk_every(base, 10, 1)
     ] ++
       [
         [3, 3, 3, 2, 3, 2, 2, 2],
         [3, 3, 2, 3, 2, 2, 2],
         [3, 2, 3, 2, 2, 2],
         [2, 3, 2, 2, 2],
         [3, 2, 2, 2],
         [2, 2, 2]
       ])
    |> Enum.map(fn l -> Enum.group_by(l, & &1) end)
    |> Enum.map(fn m ->
      total = Map.values(m) |> List.flatten() |> length |> IO.inspect()
      {Enum.map(m, fn {k, v} -> {k, length(v) / total} end), total}
    end)
  end

  def percentages2 do
    base = [5, 5, 5, 4, 5, 4, 4, 4, 3, 4, 3, 3, 3, 2, 3, 2, 2, 2]

    Enum.map(1..length(base), fn i ->
      Enum.take(base, i)
    end)
    |> Enum.map(fn l -> Enum.group_by(l, & &1) end)
    |> Enum.map(fn m ->
      total = Map.values(m) |> List.flatten() |> length
      {Enum.map(m, fn {k, v} -> {k, {length(v) / total, length(v), total}} end), total}
    end)
  end

  def build_pattern(:sop) do
    start = [2, 3, 2, 1, 2, 1, 5, 3, 4, 1, 4, 4, 5]
    target = [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]

    do_build_pattern(start, target, 0, [start])
  end

  def build_pattern(:bari) do
    start = [2, 3, 2, 1, 2, 1, 4, 3, 4, 1, 4, 4, 6]
    target = [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]

    do_build_pattern(start, target, 0, [start])
  end

  def build_pattern(sax) when sax in [:alto, :tenor] do
    start = [2, 3, 2, 1, 2, 1, 4, 3, 4, 1, 4, 4, 5]
    target = [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]

    do_build_pattern(start, target, 0, [start])
  end

  def do_build_pattern(target, target, _, acc), do: Enum.reverse(acc)

  def do_build_pattern(start, target, index, acc) do
    cond do
      Enum.at(start, index) == Enum.at(target, index) ->
        do_build_pattern(start, target, rem(index + 1, length(start)), acc)

      Enum.at(start, index) > Enum.at(target, index) ->
        next = List.update_at(start, index, &(&1 - 1))
        do_build_pattern(next, target, rem(index + 1, length(start)), [next | acc])

      Enum.at(start, index) < Enum.at(target, index) ->
        next = List.update_at(start, index, &(&1 + 1))
        do_build_pattern(next, target, rem(index + 1, length(start)), [next | acc])
    end
  end

  def run do
    image =
      Xairo.Image.new("b-canon.png", 1000, 400)
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      {[24, 14, 8], 0},
      {[20, 12, 7], 7},
      {[16, 10, 6], 14},
      {[10, 14, 10], 12}
    ]
    |> Enum.map(fn {line, offset} -> {Enum.map(line, &(&1 * @factor)), offset * @factor} end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {{line, initial_offset}, y_offset}, image ->
      {image, _} =
        Enum.reduce(line, {image, initial_offset}, fn len, {image, start} ->
          image =
            image
            |> Xairo.rectangle({start, y_offset * 100}, len, 100)
            |> Xairo.stroke()

          {image, start + len}
        end)

      image
    end)

    Xairo.Image.save(image)
  end

  def run2 do
    image =
      Xairo.Image.new("b-canon-2.png", 1000, 400)
      |> Xairo.set_source(Xairo.Rgba.new(1, 1, 1))
      |> Xairo.paint()
      |> Xairo.set_source(Xairo.Rgba.new(0, 0, 0))

    [
      {[20, -6, 12, -6, 7], 0},
      {[10, -6, 6, -6, 14], 9},
      {[24], 27},
      {[8, -6, 16], 21}
    ]
    |> Enum.map(fn {line, offset} -> {Enum.map(line, &(&1 * @factor)), offset * @factor} end)
    |> Enum.with_index()
    |> Enum.reduce(image, fn {{line, initial_offset}, y_offset}, image ->
      {image, _} =
        Enum.reduce(line, {image, initial_offset}, fn len, {image, start} ->
          if len < 0 do
            image =
              image
              |> Xairo.rectangle({start, y_offset * 100}, abs(len), 100)
              |> Xairo.fill()

            {image, start + abs(len)}
          else
            image =
              image
              |> Xairo.rectangle({start, y_offset * 100}, len, 100)
              |> Xairo.stroke()

            {image, start + len}
          end
        end)

      image
    end)

    Xairo.Image.save(image)
  end

  def patterns(:sop) do
    [
      [2, 03, 2, 1, 2, 1, 5, 3, 4, 1, 4, 4, 05],
      [2, 04, 2, 1, 2, 1, 5, 3, 4, 1, 4, 4, 05],
      [2, 04, 2, 1, 2, 1, 5, 3, 4, 1, 4, 3, 05],
      [3, 04, 2, 1, 2, 1, 5, 3, 4, 1, 4, 3, 05],
      [3, 04, 2, 1, 3, 1, 5, 3, 4, 1, 4, 3, 05],
      [3, 04, 2, 1, 3, 1, 5, 3, 4, 1, 4, 3, 06],
      [3, 05, 2, 1, 3, 1, 5, 3, 4, 1, 4, 3, 06],
      [3, 05, 2, 1, 3, 2, 5, 3, 4, 1, 4, 3, 06],
      [4, 05, 2, 1, 3, 2, 5, 3, 4, 1, 4, 3, 06],
      [4, 05, 2, 1, 4, 2, 5, 3, 4, 1, 4, 3, 06],
      [4, 05, 2, 1, 4, 2, 4, 3, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 4, 2, 4, 3, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 4, 3, 4, 3, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 4, 3, 4, 2, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 4, 2, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 3, 2, 4, 1, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 3, 2, 4, 2, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 2, 2, 4, 2, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 2, 2, 4, 3, 4, 3, 06],
      [4, 06, 2, 1, 5, 3, 2, 2, 4, 3, 4, 3, 07],
      [4, 06, 2, 1, 5, 3, 2, 2, 4, 3, 4, 2, 07],
      [5, 06, 2, 1, 5, 3, 2, 2, 4, 3, 4, 2, 07],
      [5, 06, 2, 1, 6, 3, 2, 2, 4, 3, 4, 2, 07],
      [5, 07, 2, 1, 6, 3, 2, 2, 4, 3, 4, 2, 07],
      [5, 07, 2, 1, 6, 4, 2, 2, 4, 3, 4, 2, 07],
      [5, 07, 2, 1, 6, 4, 2, 2, 4, 4, 4, 2, 07],
      [5, 07, 2, 1, 6, 4, 2, 2, 3, 4, 4, 2, 07],
      [5, 07, 2, 1, 6, 4, 2, 2, 3, 4, 4, 1, 07],
      [6, 07, 2, 1, 6, 4, 2, 2, 3, 4, 4, 1, 07],
      [6, 07, 2, 1, 7, 4, 2, 2, 3, 4, 4, 1, 07],
      [6, 07, 2, 1, 7, 4, 2, 2, 3, 5, 4, 1, 07],
      [6, 08, 2, 1, 7, 4, 2, 2, 3, 5, 4, 1, 07],
      [6, 08, 2, 1, 7, 4, 2, 2, 2, 5, 4, 1, 07],
      [6, 08, 2, 1, 7, 4, 2, 2, 2, 5, 4, 1, 08],
      [6, 08, 2, 1, 8, 4, 2, 2, 2, 5, 4, 1, 08],
      [6, 08, 2, 1, 8, 4, 2, 2, 2, 6, 4, 1, 08],
      [6, 09, 2, 1, 8, 4, 2, 2, 2, 6, 4, 1, 08],
      [6, 09, 2, 1, 8, 4, 2, 2, 1, 6, 4, 1, 08],
      [6, 10, 2, 1, 8, 4, 2, 2, 1, 6, 4, 1, 08],
      [6, 10, 2, 1, 8, 4, 2, 2, 1, 7, 4, 1, 08],
      [6, 11, 2, 1, 8, 4, 2, 2, 1, 7, 4, 1, 08],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 08],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 09],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 10],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]
    ]
  end

  def patterns(sax) when sax in [:alto, :tenor] do
  end

  def patterns2(:sop) do
    [
      [2, 03, 2, 1, 2, 1, 5, 3, 4, 1, 4, 4, 05],
      [3, 04, 2, 1, 3, 2, 4, 2, 3, 2, 4, 3, 06],
      [4, 05, 2, 1, 4, 3, 3, 2, 2, 3, 4, 2, 07],
      [5, 06, 2, 1, 5, 4, 2, 2, 1, 4, 4, 1, 08],
      [6, 07, 2, 1, 6, 4, 2, 2, 1, 5, 4, 1, 09],
      [6, 08, 2, 1, 7, 4, 2, 2, 1, 6, 4, 1, 10],
      [6, 09, 2, 1, 8, 4, 2, 2, 1, 7, 4, 1, 11],
      [6, 10, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]
    ]
  end

  def patterns2(sax) when sax in [:alto, :tenor] do
    [
      [2, 03, 2, 1, 2, 1, 4, 3, 4, 1, 4, 4, 05],
      [3, 04, 2, 1, 3, 2, 3, 2, 3, 2, 4, 3, 06],
      [4, 05, 2, 1, 4, 3, 2, 2, 2, 3, 4, 2, 07],
      [5, 06, 2, 1, 5, 4, 2, 2, 1, 4, 4, 1, 08],
      [6, 07, 2, 1, 6, 4, 2, 2, 1, 5, 4, 1, 09],
      [6, 08, 2, 1, 7, 4, 2, 2, 1, 6, 4, 1, 10],
      [6, 09, 2, 1, 8, 4, 2, 2, 1, 7, 4, 1, 10],
      [6, 10, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]
    ]
  end

  def patterns2(:bari) do
    [
      [2, 03, 2, 1, 2, 1, 4, 3, 4, 1, 4, 4, 06],
      [3, 04, 2, 1, 3, 2, 3, 2, 3, 2, 4, 3, 07],
      [4, 05, 2, 1, 4, 3, 2, 2, 2, 3, 4, 2, 08],
      [5, 06, 2, 1, 5, 4, 2, 2, 1, 4, 4, 1, 09],
      [6, 07, 2, 1, 6, 4, 2, 2, 1, 5, 4, 1, 10],
      [6, 08, 2, 1, 7, 4, 2, 2, 1, 6, 4, 1, 11],
      [6, 09, 2, 1, 8, 4, 2, 2, 1, 7, 4, 1, 11],
      [6, 10, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11],
      [6, 11, 2, 1, 9, 4, 2, 2, 1, 7, 4, 1, 11]
    ]
  end

  # sop is 1055, all quintuplets = 211 beats
  # bari: [192, 5, 6, 6]
  # tenor: [185, 7, 7, 7]
  # [sop: 1055, alto: 988, tenor: 988, bari: 1010]

  # def breakdown(:tenor) do
  #   for a <- 3..206,
  #       b <- 3..206,
  #       c <- 3..206,
  #       d <- 3..206,
  #       a + b + c + d == 206,
  #       a * 5 + b * 4 + c * 3 + d * 2 == 988 do
  #     [a, b, c, d]
  #   end
  #   |> Enum.min_by(fn [_a, b, c, d] -> std_dev([b, c, d]) end)
  # end
  #
  # def breakdown(:bari) do
  #   for a <- 3..209,
  #       b <- 3..209,
  #       c <- 3..209,
  #       d <- 3..209,
  #       a + b + c + d == 209,
  #       a * 5 + b * 4 + c * 3 + d * 2 == 1010 do
  #     [a, b, c, d]
  #   end
  #   |> Enum.min_by(fn [_a, b, c, d] -> std_dev([b, c, d]) end)
  # end

  def breakdown(:alto) do
    for a <- 0..341,
        b <- 0..341,
        c <- 0..341,
        d <- 0..341,
        a + b + c + d == 341,
        a * 5 + b * 4 + c * 3 + d * 2 == 988 do
      [a, b, c, d]
    end
  end

  def breakdown(:tenor) do
    for a <- 0..346,
        b <- 0..346,
        c <- 0..346,
        d <- 0..346,
        a + b + c + d == 346,
        a * 5 + b * 4 + c * 3 + d * 2 == 988 do
      [a, b, c, d]
    end
  end

  def breakdown(:bari) do
    for a <- 0..349,
        b <- 0..349,
        c <- 0..349,
        d <- 0..349,
        a + b + c + d == 349,
        a * 5 + b * 4 + c * 3 + d * 2 == 1010 do
      [a, b, c, d]
    end
  end

  def shuffle(:bari) do
    [
      [10, 0, 0, 0],
      [5, 16, 0, 0],
      [5, 16, 27, 0],
      [4, 17, 27, 50],
      [0, 17, 27, 50],
      [0, 0, 27, 51]
    ]
    |> Enum.map(&do_shuffle/1)
    |> List.flatten()
  end

  def shuffle(:tenor) do
    [
      [0, 12, 0, 0],
      [7, 13, 0, 0],
      [6, 13, 27, 0],
      [6, 13, 27, 51],
      [0, 14, 27, 51],
      [0, 0, 28, 51]
    ]
    |> Enum.map(&do_shuffle/1)
    |> List.flatten()
  end

  def shuffle(:alto) do
    [
      [0, 12, 0, 0],
      [8, 13, 0, 0],
      [8, 13, 26, 0],
      [8, 13, 26, 49],
      [0, 13, 27, 49],
      [0, 0, 27, 49]
    ]
    |> Enum.map(&do_shuffle/1)
    |> List.flatten()
  end

  def do_shuffle([fives, fours, threes, twos]) do
    :rand.seed(:exsplus, {fives * fours, fours * threes, threes * twos})

    ((Stream.cycle([5]) |> Enum.take(fives)) ++
       (Stream.cycle([4]) |> Enum.take(fours)) ++
       (Stream.cycle([3]) |> Enum.take(threes)) ++
       (Stream.cycle([2]) |> Enum.take(twos)))
    |> Enum.shuffle()
  end

  def std_dev(list) do
    mean = Enum.sum(list) / length(list)

    square_dist_sum = Enum.map(list, fn el -> (el - mean) * (el - mean) end) |> Enum.sum()

    :math.sqrt(square_dist_sum / length(list))
  end

  def to_lily(sax) do
    shuffle(sax)
    |> Enum.map(&to_tuplet/1)
    |> into_lily_file(sax)
  end

  def to_tuplet(2), do: "d8 [ d8]"
  def to_tuplet(3), do: "\\tuplet 3/2 { d8 [ d8 d8] }"
  def to_tuplet(4), do: "d16 [ d16 d16 d16]"
  def to_tuplet(5), do: "\\tuplet 5/4 { d16 [ d16 d16 d16 d16] }"

  def into_lily_file(beats, sax) do
    contents =
      [
        ~s(\\version "2.24.1"),
        ~s(\\language "english"),
        "",
        "\\relative c' {",
        beats,
        "}"
      ]
      |> List.flatten()
      |> Enum.join("\n")

    File.write("priv/lily/b/draft4/part2/#{sax}-beats.ly", contents)
  end
end
