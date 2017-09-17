defmodule MyRange do
  def even(last) do
    for number <- 1..last, rem(number, 2) == 0, do: number
  end
end
