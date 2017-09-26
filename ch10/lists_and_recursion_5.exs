defmodule MyList do
  # This was cheating because it used the Enum module
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

  # Splits the enumerable into two enumerables, leaving `count` elements in the first one
  def split(list, count) do
    _split(list, count, [])
  end
  defp _split(list, count, left) when count > 0 do
    [head | tail] = list
    _split(tail, count - 1, left ++ [head])
  end
  defp _split(list, count, left) when count == 0 do
    {left, list -- [left]}
  end

  @doc """
  Takes the first `count` items from the enumerable
  """
  def take(list, count) do
    _take(list, count, [])
  end

  defp _take(list, count, _) when count > length(list) do
    list
  end
  defp _take(_, count, result) when count == 0 do
    result
  end
  defp _take(list, count, result) do
    [head | tail] = list
    _take(tail, count - 1, result ++ [head])
  end
end
