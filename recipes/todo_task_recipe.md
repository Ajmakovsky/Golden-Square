{{PROBLEM}} Method Design Recipe


1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

"As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO."

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

including_todo = todo_check(text)

text: a string or block of text 
including_todo: true or false; if #TODO is included in the text 


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

todo_check("") => false
todo_check("#TODO") => true 
todo_check("Hello world!") => false 
todo_check("Hello #TODO world!") => true 
todo_check("#TODO - Go grocery shopping")


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.