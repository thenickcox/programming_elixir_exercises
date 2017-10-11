defmodule Span do
  def of(from, to) when from < to do
    _of(from, to, [])
  end

  defp _of(from, to, result) when from <= to do
    _of(from + 1, to, result ++ [from])
  end

  defp _of(from, to, result) when from > to, do: result
end
