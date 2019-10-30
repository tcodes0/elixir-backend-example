defmodule MinimalServer.Endpoint do
  use Plug.Router

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
    Plug.Cowboy.http(__MODULE__, [])
  end
end
