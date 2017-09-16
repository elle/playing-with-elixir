defmodule MyList do
  def reverse(list) do
    reverse(list, [])
  end

  defp reverse([h|t], arr) do
    reverse(t, [h | arr])
  end

  defp reverse([], arr) do
    arr
  end
end
