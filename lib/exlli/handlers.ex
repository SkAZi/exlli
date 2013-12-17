defmodule Exlli.Hello do

  use Exlli.Handler.Behaviour

  def handle(request, _args) do
    handle(request.method, :elli_request.path(request), request)
  end

  def handle(:GET, [], _request) do
    {200, [], "Hello World!"}
  end

  def handle(:GET, ["info"], request) do
    request = inspect(request, raw: true)
    {200, [], "You request contains: #{request}"}
  end

  def handle(_, _, _request) do
    {404, [], "Not Found"}
  end

  def handle_event(_event, _data, _args) do
    :ok
  end

end