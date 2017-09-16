defmodule MyList do
  # define default and call itself
  def sum(list, acc \\ 0) 

  def sum([h|t], acc) do
    sum(t, acc + h)
  end

  def sum([], acc) do
    acc
  end
end
