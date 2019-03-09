defmodule Sort.Insertion do
  @moduledoc """
  Insertion Sort Ealg
  """
  @doc """
  An O(n2) sorting algorithm which moves elements one at a time into the correct position.
  The algorithm consists of inserting one element at a time into the previously sorted part of the array,
  moving higher ranked elements up as necessary.
  To start off, the first (or smallest, or any arbitrary) element of the unsorted array is considered to be the sorted part.

  Although insertion sort is an O(n2) algorithm, its simplicity, low overhead,
  good locality of reference and efficiency make it a good choice in two cases:
  (i) small n,
  (ii) as the final finishing-off algorithm for O(n logn) algorithms such as mergesort and quicksort.

  ## Examples
      iex> Sort.Insertion.sort([5, 4, 3, 2, 1])
      {:ok, [1, 2, 3, 4, 5]}
  """
  def sort(list) do
    insertion_sort(list, [])
  end

  def insertion_sort(list) when is_list(list), do: insertion_sort(list, [])

  def insertion_sort([], sorted), do: { :ok, sorted }
  def insertion_sort([h | t], sorted), do: insertion_sort(t, insert(h, sorted))

  defp insert(x, []), do: [x]
  defp insert(x, sorted) when x < hd(sorted), do: [x | sorted]
  defp insert(x, [h | t]), do: [h | insert(x, t)]
end
