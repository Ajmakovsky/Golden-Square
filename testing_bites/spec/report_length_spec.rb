require 'report_length'

describe "report_length method" do 
  it "takes a string and returns the length of the string" do 
    expect(report_length("Hello there!")).to eq "This string was 12 characters long."
  end
  
  it "takes a string and returns the length of the string" do 
    expect(report_length("Bananas")).to eq "This string was 7 characters long."
  end

  it "takes a string and returns the length of the string" do 
    expect(report_length("ABCDEFGHIJKLMNOPQRSTUVWXYZ")).to eq "This string was 26 characters long."
  end
end 
