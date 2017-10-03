defmodule Gear do
  @doc """
  Calculates the ratio of a bike's gear

  ## Parameters

    - chainring: Integer
    - cog: Integer

  ## Examples

      iex> Gear.ratio(52, 11)
      4.7272727273

  """
  def ratio(chainring, cog), do: chainring / cog
end
