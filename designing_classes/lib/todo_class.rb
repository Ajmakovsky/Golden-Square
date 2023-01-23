class Todo
  def initialize
    @todo_list = []
  end 

  def add(task)
    @todo_list.push(task)
  end

  def complete(number)
    @todo_list.delete_at(number - 1)
  end

  def show_list
    fail "There are no tasks in your todo list" if @todo_list.empty?
    return show_list
  end 
end

# todo = Todo.new
# todo.add("Do laundry")
# todo.add("Vacuum")
# puts todo.show_list

# Alternate method for show_list: 

# list = ""
# @todo_list.each_with_index do |task, index|
#   list << "#{index + 1}. #{task}"
#   list << ", " if task != @todo_list[-1]
# end 