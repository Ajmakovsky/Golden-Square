require 'todo'
require 'todo_list'

RSpec.describe 'integration' do 
  it 'returns an empty string when no task has been added' do
    todo = Todo.new("")
    expect(todo.task).to eq ""
  end

  it 'returns all non-done todos' do
    todolist = TodoList.new
    todo1 = Todo.new("Laundry")
    todolist.add(todo1)
    expect(todolist.incomplete).to eq [todo1]
  end

  it 'returns all complete todos' do
    todolist = TodoList.new
    todo1 = Todo.new("Laundry")
    todo1.mark_done!
    todolist.add(todo1)
    expect(todolist.complete).to eq [todo1]
  end

    
  it 'marks all todos as complete and returns all todos when complete method is called' do
    todolist = TodoList.new
    todo1 = Todo.new("Laundry")
    todo2 = Todo.new("Dishes")
    todolist.add(todo1)
    todolist.add(todo2)
    todolist.give_up!
    expect(todolist.give_up!).to eq todolist.complete
  end
end