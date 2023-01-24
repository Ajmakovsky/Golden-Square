class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false 
  end

  def task
    return @task
  end

  def mark_done!
    return @done = true 
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    return @done 
    # Returns true if the task is done
    # Otherwise, false
  end

end