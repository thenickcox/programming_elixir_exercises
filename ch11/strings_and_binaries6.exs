defmodule Caplitalizer do
  def capitalize_sentences(string) do
    string
    |> String.downcase
    |> String.split(". ")
    |> Enum.map(fn s -> String.capitalize s end)
    |> Enum.join(". ")
  end
end
