defmodule FizzBuzz do
  def perform(a, b, c) do
    do_fizz_buzz1(a,b,c)
  end

  defp do_fizz_buzz1(0, 0, _) do
    "FizzBuzz"
  end
  defp do_fizz_buzz1(0, _, _) do
    "Fizz"
  end
  defp do_fizz_buzz1(_, 0, _) do
    "Buzz"
  end
  defp do_fizz_buzz1(_, _, a) do
    a
  end
end

defmodule Exercises do
  def fizz_buzz_rem(n) do
    FizzBuzz.perform(rem(n, 3), rem(n, 5), n)
  end
end
