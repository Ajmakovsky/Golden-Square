require 'todo'

describe Todo do
  it 'returns an empty string when no todo is added' do
    todo = Todo.new("")
    expect(todo.task).to eq ""
  end

  it 'returns false if a task is not marked done' do 
    todo = Todo.new("Laundry")
    expect(todo.done?).to eq false
  end 

  it 'returns false if a task is not marked done' do 
    todo = Todo.new("Laundry")
    todo.mark_done!
    expect(todo.done?).to eq true
  end 
end

