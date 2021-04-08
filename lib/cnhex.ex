defmodule CNHEx do
  def is_valid?(nil), do: false
  def is_valid?(""), do: false
  def is_valid?(number) when is_number(number) do
    number
    |> Integer.to_string()
    |> is_valid?()
  end
  def is_valid?(number) do
    cond do
      String.length(number) != 11 || palindrome?(number) ->
        false
      true ->
        validate(number)
    end
  end

  defp palindrome?(number) do
    number == String.reverse(number)
  end

  defp validate(number) do
    [_i, _j, v] = number
    |> String.slice(0, 9)
    |> String.split("", trim: true)
    |> Enum.reduce([0, 9, 0], fn x, acc ->
      i = Enum.at(acc, 0)
      j = Enum.at(acc, 1)
      k = Enum.at(acc, 2)
      k = k + String.to_integer(x) * j
      [i + 1, j - 1, k]
    end)

    vl1 = rem(v, 11)

    dsc = if vl1 >= 10 do
      2
    else
      0
    end

    vl1 = if vl1 >= 10 do
      0
    else
      vl1
    end

    [_i, _j, v] = number
    |> String.slice(0, 9)
    |> String.split("", trim: true)
    |> Enum.reduce([0, 1, 0], fn x, acc ->
      i = Enum.at(acc, 0)
      j = Enum.at(acc, 1)
      k = Enum.at(acc, 2)
      k = k + String.to_integer(x) * j
      [i + 1, j + 1, k]
    end)

    x = rem(v, 11)

    vl2 = if x >= 10 do
      0
    else
      x - dsc
    end

    Integer.to_string(vl1) <> Integer.to_string(vl2) == String.slice(number, -2, 2)
  end
end
