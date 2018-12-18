defmodule AdventOfCode2018.Day2.Solution do
  @moduledoc """
  Solution for Day 2 AoC problem
  """

  @input_file "priv/day2_input.txt"

  @doc """
  Return the part one solution for the input file.
  """
  def run_p1 do
    File.stream!(@input_file)
    |> Stream.map(&(String.replace(&1, "\n", "")))
    |> Stream.map(&(String.split(&1, "", trim: true)))
    # count occurrences of each letter
    |> Stream.map(fn l ->
      Enum.reduce(l, %{}, fn letter, acc ->
        Map.update(acc, letter, 1, &(&1 + 1))
      end)
    end)
    # filter out all items that only have one letter occurance
    |> Stream.map(fn m -> :maps.filter(fn _, v -> v > 1 end, m) end)
    # grab just the values back from the counted maps per input row
    |> Stream.map(&(Map.values(&1)))
    # uniq each count per input row
    |> Stream.map(&(Enum.uniq(&1)))
    # turn the stream into a list of counts
    |> Enum.to_list()
    # flatten the list of lists (counts)
    |> List.flatten()
    # count the occurrances of each count
    |> Enum.reduce(%{}, fn(n, acc) -> Map.update(acc, n, 1, &(&1 + 1)) end)
    # extract the values from the map of counts
    |> Map.values()
    # multiply the results
    |> Enum.reduce(&*/2)
  end

end
