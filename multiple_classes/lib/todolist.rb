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
    @todo_list.delete_if { |todo| todo.done? }


    # @todo_list.each do |todo|
    #   if todo.done? == false
    #     return todo
    #   end 
    # end    # Returns all non-done todos
  end

  def complete
   
    @todo_list.delete_if { |todo| todo.done? == false }
    # @todo_list.each do |todo|
    #   if todo.done? == true
    #   return todo
    #   end
    # end 
    # # Returns all complete todos
  end

  def give_up!
    @todo_list.each do |todo|
    todo.mark_done!
    end
    # Marks all todos as complete
  end
end
