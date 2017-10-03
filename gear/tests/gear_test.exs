Code.load_file("../lib/gear.exs", __DIR__)

ExUnit.start

defmodule GearTest do
  use ExUnit.Case

  #doctest Gear
  test "calculates ratio" do
    assert Gear.ratio(10, 2) == 5
  end
end
