defmodule UuidBench.MixProject do
  use Mix.Project

  def project do
    [
      app: :uuid_bench,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, "~> 1.1"},
      {:ecto, "~> 3.8"},
      {:ecto_ulid, "~> 0.3.0"},
      {:uniq, "~> 0.5.4"}
    ]
  end
end
