require 'counter'

describe Counter do 
  it "report starting count" do 
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end 

  it "reports the count after adding values" do 
    counter = Counter.new
    counter.add(7)
    result = counter.report
    expect(result).to eq "Counted to 7 so far."
  end 

  it "reports the count after adding several values" do 
    counter = Counter.new
    counter.add(7)
    counter.add(18)
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 28 so far."
  end
end 