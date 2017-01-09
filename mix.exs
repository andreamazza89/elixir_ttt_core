defmodule ElixirRomanNumerals.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_tictactoe,
      version: "0.3.1",
      elixir: "~> 1.3",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      package: package,
      description: "Core library to build a tictactoe app"
    ]
  end

  def package do
    [
      maintainers: ["Andrea Mazzarella"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/andreamazza89/elixir_ttt_core"}
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
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
