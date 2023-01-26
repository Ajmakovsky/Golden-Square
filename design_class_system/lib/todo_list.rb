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
    @todo_list.reject { |todo| todo.done? }
  end

  def complete
    # @todo_list.select do |todo| 
    #   todo.done?
    # end
    @todo_list.each do |todo|
      if todo(&:done?) == true
        return todo
      end 
    return @todo_list
    end  
  end

  def give_up!
    @todo_list.each do |todo|
    todo.mark_done!
    end
    # Marks all todos as complete
  end
end
