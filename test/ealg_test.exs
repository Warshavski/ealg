defmodule EalgTest do
  use ExUnit.Case
  doctest Ealg

  test "greets the world" do
    assert Ealg.hello() == :world
  end
end
