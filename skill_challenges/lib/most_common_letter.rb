def get_most_common_letter(text)
  counter = Hash.new(0)
  #p counter
  new_text = text.delete(' !?.,')
  new_text.chars.each do |char|
    #p char #iterate through text by going through each char
    counter[char] += 1
   #p counter
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
puts get_most_common_letter("the roof, the roof, the roof is on fire!")

puts get_most_common_letter("Hello world, it is me.")