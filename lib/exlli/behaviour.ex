defmodule Exlli.Handler.Behaviour do
  
  defrecord :req, Record.extract(:req, from_lib: "elli/include/elli.hrl")

  def __using__(_) do
    quote location: :keep do
      @behavior :elli_handler
    end
  end

end