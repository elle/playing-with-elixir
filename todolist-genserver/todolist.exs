defmodule TodoList do
  # Define default implementations for
  # the six GenServer callbacks
  use GenServer
  
  def init(tasks) do
    {:ok, tasks}
  end
  
  # Wrap calls to GenServer in public functions
  def start(tasks) do
    {:ok, list} = GenServer.start(__MODULE__, tasks)
    list
  end

  def add(list, task) do
    GenServer.cast(list, {:add, task})
  end

  def remove(list, task) do
    GenServer.cast(list, {:remove, task})
  end

  def tasks(list) do
    GenServer.call(list, :tasks)
  end

  ###
  # GenServer API
  ###

  # Handle cast messages with `handle_cast`.
  # No response is expected,
  # so reply with the {:noreply, ...} tuple format
  def handle_cast({:add, task}, tasks) do
    { :noreply, tasks ++ [task] }
  end

  # Same as previous
  def handle_cast({:remove, task}, tasks) do
    { :noreply, tasks -- [task] }
  end

  # Handle call messages with the `handle_call` callback.
  # Responses are usually expected,
  # so respond with the {:reply, ...} tuple format.
  def handle_call(:tasks, _from, tasks) do
    { :reply, tasks, tasks }
  end
end

todos = TodoList.start([])

TodoList.add(todos, "Do dishes")
TodoList.add(todos, "Clean bathroom")
TodoList.remove(todos, "Do dishes")
TodoList.tasks(todos)

