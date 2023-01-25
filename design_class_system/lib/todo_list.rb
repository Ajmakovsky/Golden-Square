require 'todo'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
    @todo_list.push(todo)
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    @todo_list.delete_if { |todo| todo == true}
  end

  def complete
    @todo_list.delete_if { |todo| todo == false}
  end

  def give_up!
    @todo_list.each do |todo|
    todo.mark_done!
    end
    # Marks all todos as complete
  end
end
