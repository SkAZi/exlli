defmodule Exlli.Mixfile do
  use Mix.Project

  def project do
    [ app: :exlli,
      version: "0.0.1",
      elixir: "~> 0.15.0",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Exlli, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:elli, git: "git://github.com/knutin/elli.git"},
    ]
  end
end
