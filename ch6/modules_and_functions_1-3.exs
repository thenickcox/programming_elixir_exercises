defmodule Times do
  def triple(n), do: n * 3
  def double(n), do: n * 2
  def quadruple(n), do: n |> double |> double
end
