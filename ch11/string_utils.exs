defmodule StringUtils do
  def anagram?(word1, word2) when byte_size(word1) == byte_size(word2) do
    prepare_for_comparison(word1) == prepare_for_comparison(word2)
  end

  def anagram?(_, _), do: false

  defp prepare_for_comparison(string) do
    String.replace(string, ~r/\W/, "")
    |> String.downcase
    |> String.to_charlist
    |> Enum.sort
    |> to_string
  end
end
