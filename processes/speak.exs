defmodule Speaker do
  def speak do
    receive do
      {:say, msg} ->
        IO.puts(msg)
        speak()
      _other ->
        speak() # throw away the message  
    end
  end
end

pid = spawn(Speaker, :speak, [])

send pid, {:say, "Hello, World!"}
send pid, {:say, "Hello, again!"}

#Process.exit(pid, :kill)
