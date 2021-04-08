defmodule CNHEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :cnhex,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      name: "CNHEx",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Biblioteca de validação de carteira nacional de habilitação."
  end

  defp deps do
    []
  end
end
