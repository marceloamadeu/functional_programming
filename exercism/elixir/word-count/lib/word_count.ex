defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """

   @seperators 

  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r{[^a-zA-Z0-9\-ö]}, trim: true)
    |> Enum.frequencies()
  end
end
