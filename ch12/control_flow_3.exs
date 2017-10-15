defmodule Okayer do
  def ok!(param) do
    if (is_tuple param) && elem(param, 0) == :ok do
      elem(param, 1)
    else
      raise "Error: param was: #{inspect param}"
    end
  end
end
