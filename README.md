# Exlli

Simple example of usage Elli webserver with Elixir.

You can install this package with mix, and start write handlers ;-)

```elixir
defmodule Project.Handler do
  
  use Exlli.Handler.Behaviour

  def handle(request, _args) do
    handle(request.method, :elli_request.path(request), request)
  end

  def handle(:GET, [], _request) di
    {200, [], "Hello, world!"}
  end

end
```

```
Interactive Elixir (0.12.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> {:ok, pid} = :elli.start_link([{:callback, Project.Handler}, {:port, 3000}])
{:ok, #PID<0.82.0>}
```