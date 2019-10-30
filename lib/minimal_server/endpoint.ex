defmodule MinimalServer.Endpoint do
  use Plug.Router
  import Logger

  plug(:match)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  )

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  plug(:dispatch)
  forward("/bot", to: MinimalServer.Router)

  match _ do
    send_resp(conn, 404, "Requested page not found!")
  end

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(_opts) do
    port = System.get_env("PORT", "4000") |> String.to_integer
    info("Starting server at http://localhost:#{port}")
    Plug.Cowboy.http(__MODULE__, [], port: port)
  end
end
