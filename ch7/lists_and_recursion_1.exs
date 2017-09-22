defmodule MyList do
  def mapsum(list, func) do
    Enum.map(list, fn x -> func.(x) end)
    |> Enum.reduce(fn (x, acc) -> x + acc end)
  end
end
