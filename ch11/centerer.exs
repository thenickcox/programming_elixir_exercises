defmodule Centerer do
  def center(str_list) do
    max = Enum.map(str_list, fn item -> String.length(item) end) |> Enum.max
    new_strs = Enum.map(str_list, fn item -> lr_pad(max, item) end)
    Enum.each(new_strs, fn item -> IO.puts item end)
  end

  defp lr_pad(max, item) do
    "#{pad_it(max, item)}#{item}#{pad_it(max, item)}"
  end

  defp to_dup(max, item), do: round((max - String.length(item)) / 2)

  defp pad_it(max, item), do: "#{String.duplicate(" ", to_dup(max, item))}"
end
