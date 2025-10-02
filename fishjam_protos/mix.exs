defmodule FishjamProtos.MixProject do
  use Mix.Project

  def project do
    [
      app: :fishjam_protos,
      version: "0.4.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: ["lib"],
      deps: deps(),
      description: "Protobuf modules for Fishjam and Membrane RTC Engine",
      package: package(),
      docs: [main: "readme", formatters: ["html"], extras: ["README.md", "LICENSE"]]
    ]
  end

  defp package do
    [
      maintainers: ["Fishjam Team"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/fishjam-cloud/protos/tree/master/fishjam_protos",
        "Fishjam Homepage" => "https://fishjam.io"
      }
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:protobuf, "~> 0.15.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
