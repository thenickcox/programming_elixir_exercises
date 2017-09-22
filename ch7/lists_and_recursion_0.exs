defmodule MyList do
  def sum(list), do: Enum.reduce(list, fn (x, acc) -> x + acc end)
  def sum2([ head | tail ]), do: head + sum(tail)
end
