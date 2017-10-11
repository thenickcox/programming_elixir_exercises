defmodule SpanTest do
  use ExUnit.Case

  test "makes a list from `from` to `to`" do
    assert Span.of(2, 8) == [2,3,4,5,6,7,8]
  end

  test "errors if given a `to` greater than `from`" do
    assert_raise FunctionClauseError, fn -> Span.of(8, 2) end
  end
end
