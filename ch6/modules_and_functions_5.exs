defmodule Math do
  def gcd(x, 0), do: x
  def gcd(x, y) do
    y |> gcd(rem(x, y))
  end
end
