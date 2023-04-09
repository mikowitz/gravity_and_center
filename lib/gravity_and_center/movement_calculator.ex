defmodule GravityAndCenter.MovementCalculator do
  def optimal_beats(ls) do
    {min, max} = Enum.min_max(ls)

    min_count = max / 5

    possible_beats =
      for a <- 0..min,
          b <- 0..min,
          c <- 0..min,
          min == a * 3 + b * 4 + c * 5,
          min_count <= a + b + c do
        [a, b, c]
      end

    Enum.min_by(possible_beats, &std_dev/1)
  end

  def optimal_beats_count(ls) do
    ls
    |> optimal_beats()
    |> Enum.sum()
  end

  def beats_for(beat_count, division_count) do
    possible_beats =
      for a <- 0..beat_count,
          b <- 0..beat_count,
          c <- 0..beat_count,
          a + b + c == beat_count,
          a * 3 + b * 4 + c * 5 == division_count do
        [a, b, c]
      end

    [threes, fours, fives] = Enum.min_by(possible_beats, &std_dev/1)

    all =
      [
        Stream.cycle([3]) |> Enum.take(threes),
        Stream.cycle([4]) |> Enum.take(fours),
        Stream.cycle([5]) |> Enum.take(fives)
      ]
      |> List.flatten()

    seed = {beat_count, division_count, threes * fours * fives}

    :rand.seed(:exsss, seed)
    sample_size = :rand.uniform(10_000)

    Stream.iterate(all, &Enum.shuffle/1)
    |> Enum.take(sample_size)
    |> Enum.at(:rand.uniform(sample_size))
  end

  def std_dev(l) do
    len = length(l)
    mean = Enum.sum(l) / len

    diff_mean =
      Enum.map(l, fn x -> :math.pow(x - mean, 2) end)
      |> Enum.sum()
      |> Kernel./(len)

    :math.sqrt(diff_mean)
  end
end
