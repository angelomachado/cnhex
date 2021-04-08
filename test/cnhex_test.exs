defmodule CNHExTest do
  use ExUnit.Case
  doctest CNHEx

  test "validating nil cnh" do
    assert CNHEx.is_valid?(nil) == false
  end

  test "validating empty cnh" do
    assert CNHEx.is_valid?("") == false
  end

  test "validating palindrome cnh" do
    assert CNHEx.is_valid?("11111111111") == false
  end

  test "validating invalid cnh" do
    assert CNHEx.is_valid?("92394484427") == false
  end

  test "validating valid cnh" do
    assert CNHEx.is_valid?("92394484426")
  end
end
