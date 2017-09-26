defmodule MyListTest do
  require Integer
  use ExUnit.Case
  doctest MyList

  test "all?" do
    list = [1,2,3]
    assert MyList.all?(list, fn x -> x < 5 end)
  end

  test "filter" do
    list = [1,2,3]
    assert MyList.filter(list,
      fn x -> Integer.is_even(x) end) == [2]
  end


  test "split: greater than the length of the list" do
    list = [1,2,3]
    assert MyList.split(list, 5) == {[1,2,3], []}
  end

  test "split: 0" do
    list = [1,2,3]
    assert MyList.split(list, 0) == {[], [1,2,3]}
  end

  test "split: greater than 0" do
    list = [1,2,3]
    assert MyList.split(list, 1) == {[1], [2,3]}
  end


  test "take: greater than the length of the list" do
    list = [1,2,3]
    assert MyList.take(list, 5) == list
  end

  test "take: 0" do
    list = [1,2,3]
    assert MyList.take(list, 0) == []
  end

  test "take: subset of list" do
    list = [1,2,3]
    assert MyList.take(list, 2) == [1,2]
  end
end
