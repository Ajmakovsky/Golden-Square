class GrammarStats
  def initialize
    # ...
    @tests = 0 
    @passed = 0 
  end

  def check(text) 
    if text[0] == text[0].upcase && [".","!","?"].include?(text[-1]) 
      @tests += 1
      @passed += 1 
      return true
    else 
      @tests += 1 
      return false 
    end 
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good

    percentage = (@passed / @tests.to_f) * 100
    return percentage.round
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

# text = GrammarStats.new
# puts text.check("Hello mate!")
# puts text.check("Heya pal.")
# puts text.percentage_good