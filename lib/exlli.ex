defmodule Exlli do
  use Application

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Exlli.Supervisor.start_link
    Exlli.Handler.run(Exlli.Hello)
  end
end
