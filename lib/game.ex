defmodule Game do
  @moduledoc """
  Documentation for `Game`.
  """

  @stone 1
  @paper 2
  @scissor 3

  def play(first_player_choice, second_player_choice) do
    result(first_player_choice, second_player_choice)
  end

  defp result(first_player_choice, second_player_choice) do
    cond do
      first_player_choice == second_player_choice ->
        {:ok, "Draw!"}

      first_player_choice == @scissor && second_player_choice == @paper ->
        {:ok, "First player win!!!"}
    end
  end
end
