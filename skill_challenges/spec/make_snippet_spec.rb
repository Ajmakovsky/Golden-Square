require 'make_snippet'

describe "make_snippet method" do
  it "returns an empty string" do
    expect(make_snippet("")).to eq ""
  end

  context "given a string which is less than 5 words" do 
    it "returns the string" do 
      result = make_snippet("Hello world")
      expect(result).to eq "Hello world"
    end
  end 

  context "given a string that is 5 words" do 
    it "returns the string" do 
      result = make_snippet("Hello world it is me")
      expect(result).to eq "Hello world it is me"
    end
  end 

  context "given a string greater than 5 words" do
    it "returns the first 5 words, followed by ..." do
      result = make_snippet("Hello world it is me Abigail")
      expect(result).to eq "Hello world it is me..."
    end
  end
end
