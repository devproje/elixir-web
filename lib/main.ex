defmodule Main do
    def router(path, handler) do
        route_path = path
        IO.puts "Router registered in path: #{path}"

        {route_path, handler, []}
    end

    defp dispatch_router do
        :cowboy_router.compile([
            {:_, [
                router("/", IndexHandler)
            ]}
        ])
    end

    def start(_type, _opts) do
        IO.puts "Server started on port 3000"
        :cowboy.start_clear(:http, [{:port, 3000}], %{env: %{dispatch: dispatch_router()}})
    end
end
