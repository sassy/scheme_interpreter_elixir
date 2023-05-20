defmodule SchemeInterpreterTest do
  use ExUnit.Case
  doctest SchemeInterpreter

  test "greets the world" do
    assert SchemeInterpreter.hello() == :world
  end
end
