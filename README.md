# Elixir Backend Example

## Install

- clone
- copy .env.example to .env
- `source .env` to copy vars to shell env
- `mix run --no-halt` to start server

## Changelog

The goal here is to grow this repo up to a graphql capable backend.

Some tags worth checking out (from old to new).

### `simple-json2`
Server is functional with router and JSON parser.
See `lib/minimal_server/endpoint.ex` for endpoints

## Default readme stuff

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `minimal_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:minimal_server, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/minimal_server](https://hexdocs.pm/minimal_server).

