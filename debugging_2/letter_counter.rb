class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    # create new hash with default value set to 1 // changed value to 0
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      # iterate through each character in the inputted text 
      next unless is_letter?(char)
      # skips iteration if the current character is not a letter; using the latter is_letter? method created within this class 
      counter[char] = (counter[char] || 1) + 1
      # looks for the char in counter hash to see if it's already present; then checks the value and either sets it to 1 + 1 or the value + 1 
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char]
        # if the character value is greater than the most_common_count variable, it sets the most_common variable to that character;
        # and then the most_common_count variable is incremented by/set to the value of that character 
        # // removed the increment to most_common_count as it should only equal the counter[char]
      end
    end
    return [most_common_count, most_common]
    # returns the count of the most common character and the actual most common character 
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common



# Intended output:
# [2, "i"]
