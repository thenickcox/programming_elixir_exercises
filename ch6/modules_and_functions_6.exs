defmodule Chop do
  def guess(actual, range) when actual > 0 do
    low..high = range
    current_guess = low + round((high - low) / 2)
    do_guess(current_guess, actual, low, high)
  end

  defp do_guess(value, actual, _, _) when value == actual, do: IO.puts "#{actual}"
  defp do_guess(value, actual, low, high) do
    IO.puts "Is it #{value}"
    new_low = find_new_low(value, actual, low)
    new_high = find_new_high(value, actual, high)
    guess(actual, new_low + 1..new_high - 1)
  end

  defp find_new_low(value, actual, low) when value > actual, do: low
  defp find_new_low(value, actual, _) when value < actual, do: value

  defp find_new_high(value, actual, _) when value > actual, do: value
  defp find_new_high(value, actual, high) when value < actual, do: high
end
