defmodule Couchex.Mixfile do
  use Mix.Project

  def project do
    [app: :couchex,
     version: "0.7.0",
     elixir: "~> 1.3",
     package: package(),
     description: description(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :couchbeam]]
  end

  defp deps do
    [
      {:couchbeam, git: "https://github.com/brainlid/couchbeam"},
      {:ex_doc, "~> 0.14", only: :dev},
    ]
  end

  defp description do
    """
    CouchDB client, wrapping couchbeam erlang client.
    """
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md LICENSE CHANGELOG.md),
      maintainers: ["Thomas Ringling"],
      licenses: ["Unlicense"],
      links: %{"GitHub" => "https://github.com/ringling/couchex"}
   ]
  end
end
