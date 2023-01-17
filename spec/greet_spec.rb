# want to take one argument (a name) and return a string including that name

require 'greet'

describe 'greet' do 
  it "Greets the user with name argument" do 
    result = greet("Abigail")
    expect(result).to eq "Hello, Abigail!"
  end
end 