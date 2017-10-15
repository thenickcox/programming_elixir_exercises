defmodule FizzBuzzWithCase do
  def upto(n) when n > 0 do
    1..n |> Enum.map(&_do_fizz_buzz/1)
  end

  defp _do_fizz_buzz(n) do
    remainders = [rem(n, 3), rem(n, 5)]
    case remainders do
      [0, 0] ->
        IO.puts "FizzBuzz"
      [0, _] ->
        IO.puts "Fizz"
      [_, 0] ->
        IO.puts "Buzz"
      [_, _] ->
        IO.puts n
    end
  end
end
