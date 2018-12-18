defmodule AdventOfCode2018.Day1.Solution do
  @moduledoc """
  Solution for Day 1 AoC problem
  """

  @input_file "priv/day1_input.txt"

  @doc """
  Return the part one solution for the input file.

  Didn't need to use `File.stream!` and I know there are more elegant ways to handle the `Enum.sum` when streaming
  """
  def run_p1 do
    File.stream!(@input_file)
    |> Stream.map(&(String.replace(&1, "\n", "")))
    |> Stream.map(&(String.to_integer(&1)))
    |> Enum.to_list()
    |> Enum.sum()
  end

end
