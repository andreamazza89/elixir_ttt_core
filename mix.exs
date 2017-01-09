defmodule ElixirRomanNumerals.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_tictactoe,
      version: "0.3.0",
      elixir: "~> 1.3",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.travis": :test]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp elixirc_paths(:test), do: ["lib", "test/helpers"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:mix_test_watch, "~> 0.2", only: :dev},
    ]
  end
end
