defmodule AdventOfCode2018.Day1.Solution do
  @moduledoc """
  """

  @input_file "priv/day1_input.txt"

  @doc """
  Return the solution for the input file
  """
  def run do
    File.stream!(@input_file)
    |> Stream.map(&(String.replace(&1, "\n", "")))
    |> Stream.map(&(String.to_integer(&1)))
    |> Enum.to_list()
    |> Enum.sum()
  end

end
