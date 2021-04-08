# CNHEx

**Biblioteca de validação de carteira nacional de habilitação**

## Instruções

Adicione a dependência ao arquivo `mix.exs` do seu projeto:

```elixir
def deps do
  [
    {:cnhex, "~> 0.1.0"}
  ]
end
```

## Exemplos

```elixir
iex> CNHEx.is_valid?("")
false

iex> CNHEx.is_valid?(nil)
false

iex> CNHEx.is_valid?(92394484426)
true

iex> CNHEx.is_valid?("92394484426")
true
```



