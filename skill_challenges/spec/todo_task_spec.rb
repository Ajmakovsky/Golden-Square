require 'todo_task'

describe "tests for the todo_task method" do 
  it "returns false for an empty string" do 
    expect(todo_check("")).to eq false 
  end 

  it "returns true for the string #TODO" do
    expect(todo_check("#TODO")).to eq true 
  end
  
  it "returns false for a string not including #TODO" do 
    expect(todo_check("Hello world!")).to eq false
  end 

  context "checks a multiple word string including #TODO and returns true" do
    it "checks a string including #TODO and returns true" do 
     expect(todo_check("Hello #TODO world!")).to eq true
    end 
    
    it "checks a string starting #TODO and returns true" do 
      expect(todo_check("#TODO - Go grocery shopping")).to eq true
    end 
  end
end 