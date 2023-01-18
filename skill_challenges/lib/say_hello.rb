#Exercise 1 

#prior to debugging

=begin
def say_hello(name)
  return "hello #(name)"
end

say_hello("Abi") returned "hello #(name)"
=end


#debugged
def say_hello(name)
  return "hello #{name}"
end 

say_hello("Abi")

