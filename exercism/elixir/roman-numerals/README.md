# Roman Numerals

Write a function to convert from normal numbers to Roman Numerals.

The Romans were a clever bunch. They conquered most of Europe and ruled
it for hundreds of years. They invented concrete and straight roads and
even bikinis. One thing they never discovered though was the number
zero. This made writing and dating extensive histories of their exploits
slightly more challenging, but the system of numbers they came up with
is still in use today. For example the BBC uses Roman numerals to date
their programmes.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice
these letters have lots of straight lines and are hence easy to hack
into stone tablets).

```text
 1  => I
10  => X
 7  => VII
```

There is no need to be able to convert numbers larger than about 3000.
(The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each
digit separately starting with the left most digit and skipping any
digit with a value of zero.

To see this in practice, consider the example of 1990.

In Roman numerals 1990 is MCMXC:

1000=M
900=CM
90=XC

2008 is written as MMVIII:

2000=MM
8=VIII

See also: http://www.novaroma.org/via_romana/numbers.html

## Running tests

Execute the tests with:

```bash
$ mix test
```

### Solution

[Enum Find](https://hexdocs.pm/elixir/1.12/Enum.html#at/3): Finds the element at the given ````index```` (zero-based).

Returns ````default```` if ````index```` is out of bounds.

A negative ````index```` can be passed, which means the ````enumerable```` is enumerated once and the index is counted from the end (for example, ````-1```` finds the last element).


[Enum Reverse](https://hexdocs.pm/elixir/1.12/Enum.html#reverse/1): Returns a list of elements in ````enumerable```` in reverse order.



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

    def numeral(0), do: ""

    def numeral(number) do
      {roman, arabic} = Enum.find(@roman_numerals_list |> Enum.reverse(), fn {_, arabic} -> 
        number >= arabic 
      end)
      
      "#{roman}#{numeral(number - arabic)}"        
    end

