def reading_time(text)
  words = ((text.split(' ').length) / 200.0).ceil
  words == 1 ? "#{words} minute" : "#{words} minutes" 
end 


# # def reading_time(text)
# words = text.split(' ')
# words_per_minute = (words.length / 200.0).ceil
# if words_per_minute == 1  
#   return "1 minute"
# elsif 
#   return "#{words_per_minute} minutes"  
# end
# end 