defmodule FishjamProtos.MixProject do
  use Mix.Project

  def project do
    [
      app: :fishjam_protos,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Protobuf modules for Fishjam and Membrane RTC Engine",
      package: package()
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
      {:protobuf, "~> 0.14.1"}
    ]
  end
end
