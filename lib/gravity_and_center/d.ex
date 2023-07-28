defmodule GravityAndCenter.D do
  @moduledoc """
  I don't want words to sever me from reality.
  """

  defstruct [:chain, exhausted: false]

  def pattern do
    Messiaen.lengths("idontwantwordstosevermefromreality")
  end

  def all_primes do
    for i <- 0..11 do
      Enum.map([0, 1, 3], &rem(&1 + i, 12))
    end
    |> Enum.reject(&(2 in &1))
    |> Enum.map(&MapSet.new/1)
  end

  def all_inversions do
    for i <- 0..11 do
      Enum.map([9, 11, 0], &rem(&1 + i, 12))
    end
    |> Enum.reject(&(2 in &1))
    |> Enum.map(&MapSet.new/1)
  end

  # def find_chain(start, type) do
  def find_chain do
    start = %__MODULE__{chain: [{MapSet.new([5, 6, 8]), :prime}]}

    do_find_chain([start])
    |> Enum.map(& &1.chain)
  end

  def do_find_chain(chains) do
    if Enum.all?(chains, & &1.exhausted) do
      chains
    else
      Enum.map(chains, fn chain ->
        extend_chain(chain)
      end)
      |> List.flatten()
      |> do_find_chain()
    end
  end

  def extend_chain(%__MODULE__{exhausted: true} = chain), do: chain

  def extend_chain(%__MODULE__{chain: [{last_set, last_type} | _] = chain} = ch) do
    next_search_set =
      case last_type do
        :prime -> all_inversions()
        :inversion -> all_primes()
      end

    next_type =
      case last_type do
        :prime -> :inversion
        :inversion -> :prime
      end

    possible_extensions =
      Enum.filter(next_search_set, fn set ->
        MapSet.intersection(set, last_set) |> MapSet.size() == 2
      end)
      |> Enum.reject(fn possible ->
        possible in Enum.map(chain, &elem(&1, 0))
      end)

    case possible_extensions do
      [] ->
        %__MODULE__{ch | exhausted: true}

      exts ->
        Enum.map(exts, fn ext ->
          %__MODULE__{chain: [{ext, next_type} | chain]}
        end)
    end
  end

  def generate_pitches(chain) do
    [head | _rest] = chain = Enum.map(chain, &elem(&1, 0))

    diffs =
      Enum.chunk_every(chain, 2, 1, :discard)
      |> Enum.map(fn [s1, s2] ->
        MapSet.difference(s2, s1)
      end)

    [head | diffs]
    |> Enum.map(&MapSet.to_list/1)
    |> List.flatten()
    |> Enum.map(&{&1, rem(&1, 6)})
  end
end

# Notes:
# Uses [0 1 3], Webern-esque, pontillistic with moments of sustain
