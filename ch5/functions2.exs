defmodule Exercises do
  def fizz_buzz_1(a, b, c) do
    do_fizz_buzz1(a,b,c)
  end

  defp do_fizz_buzz1(0, 0, _) do
    "FizzBuzz"
  end
  defp do_fizz_buzz1(0, _, _) do
    "Fizz"
  end
  defp do_fizz_buzz1(_, _, a) do
    a
  end
end
