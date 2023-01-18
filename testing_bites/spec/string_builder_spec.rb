require 'string_builder'

describe StringBuilder do
  context "given no string" do
    it "return an empty string" do
      string = StringBuilder.new
      result = string.output
      expect(result).to eq ""
    end

    it "return length of empty string" do
      string = StringBuilder.new
      result = string.size
      expect(result).to eq 0
    end
  end

  context "given an additional string" do

    before(:each) do 
      @test = StringBuilder.new
      @string = @test.add("Hello")
    end

    it "outputs a string" do
      #string = StringBuilder.new
      #string.add("Hello")
      result = @test.output
      expect(result).to eq "Hello"
    end

    it "outputs the length of the string" do
      #string = StringBuilder.new
      #string.add("Hello")
      result = @string.size
      expect(result).to eq 5
    end
  end
  
  it "returns length of multiple added strings" do
    string = StringBuilder.new
    string.add("Hello")
    string.add(" World!")
    result = string.size
    expect(result).to eq 12
  end

  it "outputs multiple added strings" do
    string = StringBuilder.new
    string.add("Hello")
    string.add(" World!")
    result = string.output
    expect(result).to eq "Hello World!"
  end
end