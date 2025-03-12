defmodule FishjamProtos.MixProject do
  use Mix.Project

  def project do
    [
      app: :fishjam_protos,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Protobuf modules for Fishjam and Membrane RTC Engine"
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
