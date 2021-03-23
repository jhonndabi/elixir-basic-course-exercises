defmodule Ex1Test do
  use ExUnit.Case
  doctest Ex1

  test "count the frenquency of each word in a string" do
    assert Ex1.get_words_occurrence("turma de elixir formacao elixir de elixir") == %{"turma" => 1, "de" => 2, "elixir" => 3, "formacao" => 1}
  end

  test "return the index of two elements added together is equal to a target" do
    assert Ex1.get_two_sum_index([1, 5, 0, 8, 10, 9], 19) == [4, 5]
  end

  test "return the index of the first two elements added together is equal to a target" do
    assert Ex1.get_two_sum_index([1, 5, 0, 14, 10, 9], 19) == [1, 3]
  end

  test "return :not_found when there is no sum equal to a target" do
    assert Ex1.get_two_sum_index([1, 5, 0, 8, 10, 3], 19) == :not_found
  end
end
