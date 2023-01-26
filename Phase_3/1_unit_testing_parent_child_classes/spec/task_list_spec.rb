require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it 'returns all tasks' do 
    task_list = TaskList.new
    task1 = double :task 
    task2 = double :task 
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all).to eq [task1, task2]
  end


  it 'returns true when all tasks are complete ' do 
    task_list = TaskList.new
    task1 = double :task, complete?: true 
    task2 = double :task, complete?: true 
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq true
  end

  it 'returns false if all tasks are not complete ' do 
    task_list = TaskList.new
    task1 = double :task, complete?: true 
    task2 = double :task, complete?: false 
    task3 = double :task, complete?: true 
    task_list.add(task1)
    task_list.add(task2)
    task_list.add(task3)
    expect(task_list.all_complete?).to eq false
  end
  # Unit test `#all` and `#all_complete?` behaviour
end