def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  #puts "Creating a new array of unique character strings, and adds any missing character keys of the alphabet to get #{cipher} "
  #puts "Then creates a new array variable which is the result of calling the map function over the characters in #{plaintext} "
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
    #index = cipher.find_index(char)
    #puts "the result of this is then to find the index position within the Cipher array, using #{cipher.find_index(char)}"
   # puts "65 is then added to #{cipher.find_index(char)} to get #{65 + cipher.find_index(char)}"
   # puts "then the .chr method is called on #{65 + cipher.find_index(char)} to get #{(65 + cipher.find_index(char)).chr}"
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end






puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")






=begin
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext = plaintext.downcase
  ciphertext_chars = plaintext.chars.map do |char|
    if cipher.include?(char)
      (65 + cipher.find_index(char)).chr
    #else 
     # "Z"
    end
  end
  return ciphertext_chars.join.upcase
end


def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    if char.ord - 65 >= 25
      'z'
    else 
      cipher[char.ord() - 65]
    end
  end
  return plaintext_chars.join
end
=end



