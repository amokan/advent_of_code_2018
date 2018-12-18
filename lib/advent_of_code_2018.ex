defmodule AdventOfCode2018 do
  @moduledoc """
  Documentation for AdventOfCode2018.
  """

  @doc """
  Run the solutions for all days
  """
  def run_all do
    IO.puts "--- Advent of Code 2018 ---"

    day1() |> IO.inspect(label: "Day 1 Result")

    IO.puts "\n\n"
  end


  @doc """
  Runs the day 1 solution
  """
  def day1, do: AdventOfCode2018.Day1.Solution.run()

end
