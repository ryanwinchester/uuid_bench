defmodule UuidBenchTest do
  use ExUnit.Case
  doctest UuidBench

  test "greets the world" do
    assert UuidBench.hello() == :world
  end
end
