defmodule AdventOfCode2018.MixProject do
  use Mix.Project

  def project do
    [
      app: :advent_of_code_2018,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {AdventOfCode2018.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19.1", only: :doc},
      {:flow, "~> 0.14.3"},
      {:gen_stage, "~> 0.14.1"},
      {:poison, "~> 4.0", override: true},
      {:propcheck, "~> 1.1", only: :test}
    ]
  end
end
