defmodule BubbleTest do
  use ExUnit.Case
  doctest Sort.Bubble

  alias Sort.Bubble

  test "sorts [5,4,3,2,1] to be [1,2,3,4,5]" do
    assert Bubble.sort([5,4,3,2,1]) == { :ok, [1,2,3,4,5] }
  end

  test "sorts [1, 2, 3, 4, 5, 4, 3, 2, 1] to be [1,1,2,2,3,3,4,4,5]" do
    assert Bubble.sort([1, 2, 3, 4, 5, 4, 3, 2, 1]) == { :ok, [1,1,2,2,3,3,4,4,5] }
  end

  test "returns [1] for a sorting of [1]" do
    assert Bubble.sort([1]) == { :ok, [1] }
  end

  test "does not resort already sorted list" do
    assert Bubble.sort([1, 2, 3]) == { :ok, [1, 2, 3] }
  end

  test "does not attempt to sort []" do
    assert Bubble.sort([]) == { :error, :no_list }
  end
end
