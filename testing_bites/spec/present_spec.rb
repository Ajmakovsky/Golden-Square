require 'present'

describe Present do
  context "No content has been wrapped" do
    it "Fails and returns error" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "Content has been wrapped" do
    it "Fails and returns error" do
      present = Present.new
      present.wrap("water")
      expect { present.wrap("computer")}.to raise_error "A contents has already been wrapped."
    end

    it "wraps and unwraps content" do
      present = Present.new
      present.wrap("water")
      expect(present.unwrap).to eq "water"
    end
  end
  
end
