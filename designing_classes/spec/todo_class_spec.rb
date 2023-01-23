require 'todo_class'

describe Todo do 
  it 'adds 1 todo task to the todo list and displays this' do 
    todo_task = Todo.new
    todo_task.add("Do Laundry")
    expect(todo_task.show_list).to eq ["Do Laundry"]
  end

  it "adds 2 todo tasks to the todo list and displays this" do 
    todo = Todo.new
    todo.add("Do laundry")
    todo.add("Vacuum")
    expect(todo.show_list).to eq ["Do laundry", "Vacuum"]
  end


  it "adds 3 todo tasks to the todo list and displays this" do 
    todo = Todo.new
    todo.add("Do laundry")
    todo.add("Vacuum")
    todo.add("Clean windows")
    expect(todo.show_list).to eq ["Do laundry", "Vacuum", "Clean windows"]
  end

  it 'deletes a task from the todo list and then displays the list without this' do 
    todo = Todo.new
    todo.add("Do laundry")
    todo.add("Vacuum")
    todo.add("Clean windows")
    todo.complete(2)
    expect(todo.show_list).to eq ["Do laundry", "Clean windows"]
  end 

  it 'fails if there are no items in the todo list to show' do 
    todo = Todo.new
    expect { todo.show_list }.to raise_error "There are no tasks in your todo list"
  end
end