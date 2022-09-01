defmodule GameTest do
  use ExUnit.Case
  @stone 1
  @paper 2
  @scissor 3

  describe "Game.play/2 when the players draw" do
    test "when all players choose stone" do
      first_player_choice = @stone
      second_player_choise = @stone

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "Draw!"
    end

    test "when all players choose paper" do
      first_player_choice = @paper
      second_player_choise = @paper

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "Draw!"
    end

    test "when all players choose scissor" do
      first_player_choice = @scissor
      second_player_choise = @scissor

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "Draw!"
    end
  end

  describe "Game.play/2 when first player wins" do
    test "when first player chooses scissors and second player chooses paper" do
      first_player_choice = @scissor
      second_player_choise = @paper

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "First player win!!!"
    end

    test "when first player chooses paper and second player chooses stone" do
      first_player_choice = @paper
      second_player_choise = @stone

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "First player win!!!"
    end

    test "when first player chooses stone and second player chooses scissors" do
      first_player_choice = @stone
      second_player_choise = @scissor

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "First player win!!!"
    end
  end

  describe "Game.play/2 when second player wins" do
    test "when second player chooses scissors and first player chooses paper" do
      first_player_choice = @paper
      second_player_choise = @scissor

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "Second player win!!!"
    end

    test "when second player chooses paper and first player chooses stone" do
      first_player_choice = @stone
      second_player_choise = @paper

      assert {:ok, match} = Game.play(first_player_choice, second_player_choise)

      assert match == "Second player win!!!"
    end
  end
end
