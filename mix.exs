defmodule CNHEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :cnhex,
      version: "0.1.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "CNHEx",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end

  defp description() do
    "Biblioteca de validação de carteira nacional de habilitação."
  end

  defp package() do
    [
      files: ~w(lib test mix.exs README*),
      maintainers: ["Angelo Machado"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/angelomachado/cnhex"}
    ]
  end
end
