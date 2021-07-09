# Word Count

Given a phrase, count the occurrences of each word in that phrase.

For example for the input `"olly olly in come free"`

```text
olly: 2
in: 1
come: 1
free: 1
```

Words are compared case-insensitively.
The keys are lowercase.

## Running tests

Execute the tests with:

```bash
$ mix test
```

### Solution

[Enum Frequencies](https://hexdocs.pm/elixir/1.12/Enum.html#frequencies_by/2): Returns a map with keys as unique elements of ```enumerable``` and values as the count of every element.

    def count(sentence) do
        sentence
        |> String.downcase()
        |> String.split(~r{[^a-zA-Z0-9\-ö]}, trim: true)
        |> Enum.frequencies()
    end




