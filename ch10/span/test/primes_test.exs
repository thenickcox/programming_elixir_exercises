defmodule PrimesTest do
  use ExUnit.Case

  # test "returns the prime numbers from `from` to `to`" do
  #   assert Primes.between(2, 10) == [3, 5, 7]
  # end
  #
  test "returns true if prime" do
    assert Primes.is_prime 3
  end

  test "returns false if not prime" do
    refute Primes.is_prime 4
  end
end
