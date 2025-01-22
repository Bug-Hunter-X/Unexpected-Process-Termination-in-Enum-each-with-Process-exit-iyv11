```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    throw(:shutdown)  # Use throw to interrupt the Enum.each iteration
  else
    IO.puts(x)
  end
end)
```