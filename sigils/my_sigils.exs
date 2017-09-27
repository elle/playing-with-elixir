defmodule MySigils do
  def sigil_e(max_number, _opts) do
    1..String.to_integer(max_number)
    |> Stream.filter(&(rem(&1, 2) == 0))
    |> Enum.into([])
  end
end
