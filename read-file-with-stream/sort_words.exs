defmodule SortWords do
  def read(filename) do
    filename
    |> File.stream!
    |> Stream.filter(&String.starts_with?(&1, "d"))
    |> Stream.take_every(2)
    |> Stream.map(&String.capitalize/1)
    |> Stream.map(&String.trim/1)
    |> Enum.sort_by(&String.length/1)
    |> Enum.into([])
  end
end

words = SortWords.read("sample.txt")
IO.inspect(words)
