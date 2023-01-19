def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #puts "Creating a new array of unique character strings, and adds any missing character keys of the alphabet to get #{cipher} "
  #puts "Then creates a new array variable which is the result of calling the map function over the characters in #{plaintext} "
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
    #index = cipher.find_index(char)
    # puts "the result of this is then to find the index position within the Cipher array, using #{cipher.find_index(char)}"
   # puts "65 is then added to #{cipher.find_index(char)} to get #{65 + cipher.find_index(char)}"
   # puts "then the .chr method is called on #{65 + cipher.find_index(char)} to get #{(65 + cipher.find_index(char)).chr}"
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)

  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #puts "Creating a new array of unique character strings, and adds any missing character keys of the alphabet to get #{cipher} "

  #print "#{cipher} \n"

  plaintext_chars = ciphertext.chars.map do |char|
    # new array variable which is created by taking our input ciphertext and iterating over each character, then mapping through each character in a loop 

    #print "#{char}: " 
    #puts char.ord 
   

    cipher[char.ord - 65]
   #puts "for each character, we're calling the index of the cipher array; index being #{65 - char.ord}"
    

  end
  return plaintext_chars.join
end






 encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
