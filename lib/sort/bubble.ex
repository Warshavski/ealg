defmodule Sort.Bubble do

  @moduledoc """
  Bubble Sort Ealg
  """
  @doc """
  Main bubble sort function.


  ## Examples
      iex> Sort.Bubble.sort([5, 4, 3, 2, 1])
      {:ok, [1, 2, 3, 4, 5]}

      iex> Sort.Bubble.sort([])
      {:error, :no_list}
  """
  def sort([]), do: { :error, :no_list }
  def sort(list) when is_list(list) do
    sorted_list = sort_iteration(list)

    if sorted_list == list, do: { :ok, sorted_list }, else: sort(sorted_list)
  end

  defp sort_iteration([x, y | t]) when x > y, do: [y | sort_iteration([x | t])]
  defp sort_iteration([x, y | t]), do: [x | sort_iteration([y | t])]
  defp sort_iteration(list), do: list
end
