defmodule IndexHandler do
    def init(req, _opt) do
        res = :cowboy_req.reply(200, %{"content-type" => "application/json"}, "{\"ok\": 1, \"status\": 200, \"message\": \"Hello, World!\"}", req)
        {:ok, res, :nostate}
    end
end
