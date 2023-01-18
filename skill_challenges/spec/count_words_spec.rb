require 'count_words'

describe "count_words method" do 

  context "when string is empty" do 
    it "returns 0 for an empty string" do 
      expect(count_words("")).to eq 0
    end 
  end 

  context "when a string is passed through" do 
    it "returns number of words in the string" do 
      expect(count_words("Hello")).to eq 1 
      expect(count_words("Hello world")).to eq 2 
      expect(count_words("Hello world it's me Abi")).to eq 5
      expect(count_words("Hello world, it's us Abi and Edward")).to eq 7
    end
  end 
end 