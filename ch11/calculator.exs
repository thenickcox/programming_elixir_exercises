defmodule Calculator do
  def calculate(str) do
    [x, operator, y] = String.split(str, " ")
    a = String.to_integer(x)
    oper = String.to_atom(operator)
    b = String.to_integer(y)
    apply(Kernel, oper, [a, b])
  end
end
