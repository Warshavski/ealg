defmodule SelectionTest do
  use ExUnit.Case
  doctest Sort.Selection

  alias Sort.Selection

  test "sorts [5,4,3,2,1] to be [1,2,3,4,5]" do
    assert Selection.sort([5,4,3,2,1]) == {:ok, [1,2,3,4,5]}
  end

  test "sorts [1, 2, 3, 4, 5, 4, 3, 2, 1] to be [1,1,2,2,3,3,4,4,5]" do
    assert Selection.sort([1, 2, 3, 4, 5, 4, 3, 2, 1]) == {:ok, [1,1,2,2,3,3,4,4,5]}
  end

  test "returns [1] for a sorting of [1]" do
    assert Selection.sort([1]) == {:ok, [1]}
  end

  test "does not attempt to sort []" do
    assert Selection.sort([]) == {:error, :no_list}
  end
end
