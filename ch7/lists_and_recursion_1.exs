defmodule MyList do
  def mapsum(list, func) do
    Enum.map(list, fn x -> func.(x) end)
    |> Enum.reduce(fn (x, acc) -> x + acc end)
  end

  # O(n log n) runtime; can't immediately think of an O(n) version
  def max(list), do: list |> Enum.sort |> Enum.at(-1)
end
