defmodule MinimalServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_server,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      aliases: scripts(),
      deps: dependencies()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp dependencies do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:poison, "~> 3.0"},
      {:plug, "~> 1.6"},
      {:plug_cowboy, "~> 2.0"},
    ]
  end

  defp scripts do
    [
      start: ["run --no-halt"],
    ]
  end
end
