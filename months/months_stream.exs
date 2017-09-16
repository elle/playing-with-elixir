months = [:jan, :feb, :mar, :apr, :may, :june, :july, :aug, :sep, :oct, :nov, :dec]
stream = Stream.cycle(months)
Enum.take(stream, 15)
