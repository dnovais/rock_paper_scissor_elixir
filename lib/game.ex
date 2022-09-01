defmodule Game do
  @moduledoc """
  Documentation for `Game`.
  """

  def play(first_player_choice, second_player_choice) do
    result(first_player_choice, second_player_choice)
  end

  defp result(first_player_choice, second_player_choice) do
    game_calc_result = game_calc(first_player_choice, second_player_choice)

    case game_calc_result do
      0 -> {:ok, "Draw!"}
      1 -> {:ok, "First player win!!!"}
      _ -> {:ok, "Second player win!!!"}
    end
  end

  defp game_calc(first_player_item, second_player_item) do
    Integer.mod(first_player_item - second_player_item, 3)
  end
end
