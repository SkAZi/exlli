defmodule Exlli.Handler do

    defmacro __using__(_) do
        quote do
            @behaviour :elli_handler

            def handle(request, _args) do
                handle(:elli_request.method(request), :elli_request.path(request), %{
                    headers: :elli_request.headers(request),
                    args: :elli_request.get_args_decoded(request) 
                        |> Enum.map(fn({key,val})-> {String.to_existing_atom(key), val} end),
                    data: :elli_request.post_args_decoded(request)
                        |> Enum.map(fn({key,val})-> {String.to_existing_atom(key), val} end),
                })
            end

            def handle_event(_event, _data, _args) do
                :ok
            end
        end
    end

    def run(callback, port \\ 3000) do
        :elli.start_link([{:callback, callback}, {:port, port}])
    end
end