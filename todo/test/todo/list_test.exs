defmodule Todo.ListTest do
  use ExUnit.Case

  alias Todo.List
  alias Todo.Item

  setup do
    { :ok, list } = List.start_link("Home")
    { :ok, list: list }
  end

  test ".items returns todos in the list", %{ list: list } do
    assert List.items(list) == []
  end

  test ".add item to the list", %{ list: list } do
    item = Item.new("Create OTP app")

    List.add(list, item)

    assert List.items(list) == [item]
  end

  test ".update marks item as complete", %{ list: list } do
    item = Item.new("Complete a task")
    List.add(list, item)
    updated_item = %{ item | description: "new", completed: true  }

    List.update(list, updated_item)

    assert List.items(list) == [updated_item]
  end
end
