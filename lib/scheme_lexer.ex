defmodule SchemeLexer do
    @moduledoc """
    Lexer
    """
  
    def tokenize(input) do
      input
      |> String.replace("\n", " ")
      |> String.split(~r/\s+/, trim: true)
      |> Enum.map(&tokenize_token/1)
    end

    defp tokenize_token(token) do
        case token do
            "(" -> {:open_paren, token}
            ")" -> {:close_paren, token}
            _ -> {:atom, token}
        end
    end
  end
  