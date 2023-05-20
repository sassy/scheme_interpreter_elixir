defmodule SchemeLexerTest do
    use ExUnit.Case
  
    test "greets the world" do
        assert SchemeLexer.tokenize("(+ 1 1)") == [atom: "(+", atom: "1", atom: "1)"]
    end
  end
  