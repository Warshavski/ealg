defmodule Sort.Selection do
  @moduledoc """
  Selection Sort Ealg
  """
  @doc """
  Main selection sort function.
  Takes the head of the list, compares it to the rest of the list to find the maximum value in the list.
  Then it calls `selection/2` again with the maximum value removed from the initial list and added to the new list.

  ## Examples
      iex> Sort.Selection.sort([5, 4, 3, 2, 1])
      {:ok, [1, 2, 3, 4, 5]}
  """
  def sort(list) do
    selection(list, [])
  end

  # Find the highest value and move it to the end of the list
  # and then repeat with that number taken out until we get to
  # an empty tail.
  defp selection([], []), do: {:error, :no_list}
  defp selection([hd | []], list), do: {:ok, [hd] ++ list}
  defp selection([hd | tl], list) do
    max = Enum.max([hd | tl])
    selection([hd | tl] -- [max], [max] ++ list)
  end

end
