defmodule MinimalServerTest do
  use ExUnit.Case
  doctest MinimalServer

  test "greets the world" do
    assert MinimalServer.hello() == :world
  end
end
