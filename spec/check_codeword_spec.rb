require 'check_codeword'

describe "check_codeword" do 
  it "Returns correct if codeword passed to it is horse" do 
    result = check_codeword("horse")
    
    expect(result).to eq "Correct! Come in."
  end

  it "denies a user if the password entered is incorrect" do 
    result = check_codeword("bananas")

    expect(result).to eq "WRONG!"
  end 

  it "tells a user their guess was close if first and last letter are correct" do 
    result = check_codeword("haste")
    expect(result).to eq "Close, but nope."
  end
end 