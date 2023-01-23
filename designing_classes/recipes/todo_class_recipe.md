{{PROBLEM}} Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class Todo 
  def initialize
  # ...
  end 

  def add(task)
   # task is a new todo 
   # returns nothing 
  end 

  def complete(number)
   # number is the number of the task which has been completed 
   # removes a task from the todo list; returns nothing

  def show_list
   # throws a fail error if no tasks have been added
   # return list of todo tasks
  end
end 


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

todo = Todo.new
todo.add("Do laundry")
todo.show_list # => ["Do Laundry"]

todo = Todo.new
todo.add("Do laundry")
todo.add("Vacuum")
todo.show_list # => ["Do Laundry", "Vacuum"]

todo = Todo.new
todo.add("Do laundry")
todo.add("Vacuum")
todo.add("Clean windows")
todo.show_list # => ["Do Laundry", "Vacuum", "Clean Windows"]

todo = Todo.new
todo.add("Do laundry")
todo.add("Vacuum")
todo.add("Clean windows")
todo.complete(2)
todo.show_list # => ["Do Laundry", "Clean Windows"]


todo = Todo.new
todo.show_list # => fail "There are no todos in your list"


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.