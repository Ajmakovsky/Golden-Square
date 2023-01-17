require 'password_checker'

describe PasswordChecker do
  it "returns true if password length is greater than or equal to 8" do 
    password = PasswordChecker.new
    expect(password.check("abcdefghijkl")).to eq true 
  end 

  it "returns error if password is less than 8" do 
    password = PasswordChecker.new
    expect { password.check("abc") }.to raise_error "Invalid password, must be 8+ characters."
  end
end 