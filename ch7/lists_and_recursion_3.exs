defmodule MyList do
  def caesar(list, n) do
    list
    |> Enum.map(&add(&1, n))
    |> List.to_string
  end

  defp add(ch, n) when ch in ?a..?z do
    rem((ch - ?a + n), 26) + ?a
  end

  defp add(ch, _), do: ch
end
