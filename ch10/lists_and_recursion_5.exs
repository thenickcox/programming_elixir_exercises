defmodule MyList do
  # def all?(list, thing) do
  #   num_things = list
  #   |> Enum.filter(&(&1 == thing))
  #   |> length
  #   num_things == length(list)
  # end

  def all?(list, func) do
    result = _all(list, func, [])
    length(result) == length(list)
  end

  defp _all(list, func, result) when length(list) > 0 do
    [head | tail] = list
    if func.(head) do
      _all(tail, func, [head | result])
    else
      _all(tail, func, result)
    end
  end
  defp _all(_, _, result) do
    result
  end

  def each(list, func) do
    [head | tail] = list
    func.(head)
    each(tail, func)
  end

  def filter(list, func) do
    _filter(list, func, [])
  end

  defp _filter(list, func, result) when length(list) > 0 do
    [head | tail] = list
    if func.(head) == true do
      _filter(tail, func, [head | result])
    else
      _filter(tail, func, result)
    end
  end

  defp _filter(_, _, result) do
    result
  end
end
