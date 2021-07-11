defmodule RomanNumerals do

  @roman_numerals_list [
    I: 1, 
    IV: 4, 
    V: 5, 
    IX: 9, 
    X: 10, 
    XL: 40, 
    L: 50, 
    XC: 90, 
    C: 100, 
    CD: 400, 
    D: 500, 
    CM: 900, 
    M: 1000
  ] 

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()

  def numeral(0), do: ""

  def numeral(number) do
    {roman, arabic} = Enum.find(@roman_numerals_list |> Enum.reverse(), fn {_, arabic} -> 
      number >= arabic 
    end)
    
    "#{roman}#{numeral(number - arabic)}"        
  end
end
