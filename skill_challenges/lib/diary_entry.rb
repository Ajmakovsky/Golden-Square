class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
    return @title # Returns the title as a string
  end

  def contents
    return @contents # Returns the contents as a string
  end

  def count_words
    return @contents.split.length # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm)
    return count_words / wpm
    
    # wpm is an integer representing the number of words the
    # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) 
    contents_arr = @contents.split
    total_words = wpm * minutes
    
    #chunk_text = text_array.join[0...total_words]
    # if next chunk starts at/ the end of the contents, reset to 0
    starting_index = 0 if starting_index >= contents_arr.length
    ending_index = starting_index + total_words #Give the end index of chunk to read
    text_chunk = contents_arr[starting_index...ending_index].join(" ")
    starting_index = ending_index
    
    return  text_chunk
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end