require 'gratitudes'

describe Gratitudes do
  it "formats an empty array" do 
    gratitudes = Gratitudes.new 
    expect(gratitudes.format).to eq "Be grateful for: "
  end 

  it "pushes a gratitude into the returned string" do 
    gratitudes = Gratitudes.new
    gratitudes.add("Bananas")
    expect(gratitudes.format).to eq "Be grateful for: Bananas"
  end 

  it "pushes gratitudes into the returned string" do 
    gratitudes = Gratitudes.new 
    gratitudes.add("Bananas")
    gratitudes.add("Water")
    expect(gratitudes.format).to eq "Be grateful for: Bananas, Water"
  end
end 