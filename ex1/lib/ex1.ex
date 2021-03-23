defmodule Ex1 do
  @moduledoc false

  @doc """
  "turma de elixir formacao elixir de elixir"
  %{"turma" => 1, "de" => 2, "elixir" => 3, "formacao" => 1}
  """
  def get_words_occurrence(sentence) do
    sentence
    |> String.split()
    |> Enum.frequencies()
  end

  @doc """
  [1, 5, 0, 8, 10, 9], 19

  [4, 5]
  """
  def get_two_sum_index(integers_list, target) do
    get_two_sum_index(integers_list, integers_list, target)
  end

  defp get_two_sum_index(original_list, integers_list, target) do
    [head | tail] = integers_list

    match_sum_value = Enum.find(tail, fn x -> x + head == target end)

    if match_sum_value do
      first_value = original_list |> get_original_list_index(head)
      second_value = original_list |> get_original_list_index(match_sum_value)

      [first_value, second_value]
    else
      get_two_sum_index(original_list, tail, target)
    end
  end

  defp get_original_list_index(original_list, value) do
    Enum.find_index(original_list, fn x -> x == value end)
  end

  # @doc """
  # [1, 5, 0, 8, 10, 9], 19

  # [4, 5]
  # """
  # def get_two_sum_index(integers_list, target) do
  #   [head | tail] = Enum.with_index(integers_list)

  #   get_two_sum_index(head, tail, target)
  # end

  # defp get_two_sum_index(head, tail, target) do
  #   match_sum_value = Enum.find(tail, fn x -> elem(x, 0) + elem(head, 0) == target end)

  #   if match_sum_value do
  #     [elem(head, 1), elem(match_sum_value, 1)]
  #   else
  #     [head | tail] = tail
  #     get_two_sum_index(head, tail, target)
  #   end
  # end

  # @doc """
  # [1, 5, 0, 8, 10, 9], 19

  # [4, 5]
  # """
  # def get_two_sum_index(integers_list, target) do
  #   integers_list
  #   |> Enum.with_index
  #   |> Enum.filter(fn {v, _k} ->
  #     Enum.any?(integers_list, fn x -> x + v == target end)
  #   end)
  #   |> Enum.map(fn({_, k}) -> k end)
  # end
end
