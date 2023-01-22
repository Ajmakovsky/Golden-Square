require 'grammarstats.rb' 

describe GrammarStats do 
  context 'checks if a string starts with a capital letter and ends with correct punctuation.' do
    it 'returns true for a string starting with A and ending with .' do
      text = GrammarStats.new
      expect(text.check("Abigail!")).to eq true
    end
    it 'returns false for a string starting with A and ending with no punctuation' do 
      text = GrammarStats.new
      expect(text.check("Abigail")).to eq false
    end

    it 'returns false for a string starting with a and ending with ?' do 
      text = GrammarStats.new
      expect(text.check("abigail?")).to eq false
    end

    it 'returns false for a string starting with a and ending with no punctuation' do 
      text = GrammarStats.new
      expect(text.check("abigail")).to eq false
    end
  end
  
  it 'returns 100 when 1 test is checked and passed ' do 
    text = GrammarStats.new
    text.check("Abigail!")
    expect(text.percentage_good).to eq 100
  end 

  it 'returns 100 when 2 tests are checked and both passed' do 
    text = GrammarStats.new
    text.check("Hello mate!")
    text.check("Heya pal.")
    expect(text.percentage_good).to eq 100
  end

  it 'returns 50 when 2 tests are checked, and only one passed' do 
    text = GrammarStats.new
    text.check("Hello mate!")
    text.check("Heya pal")
    expect(text.percentage_good).to eq 50
  end
end 