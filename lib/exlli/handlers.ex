defmodule Exlli.Hello do
    use Exlli.Handler

    def handle(_, ["info", a], options) do
        {200, "Hello World #{a} #{inspect options}!"}
    end

    def handle(_, _, _) do
        {404, "Not found"}
    end
end