defmodule EvalReproTest do
  use ExUnit.Case
  doctest EvalRepro

  test "greets the world" do
    assert EvalRepro.hello() == :world
  end
end
