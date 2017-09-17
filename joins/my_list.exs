defmodule MyList do
  def joins(list, separator \\ "/") do
    for string <- list, into: "", do: "#{separator}#{string}"
  end
end
