class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @current_starting_index = 0
  end

  def title
    return @title # Returns the title as a string
  end

  def contents
    return @contents # Returns the contents as a string
  end

  def count_words
    @contents_length = @contents.split.length # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) 
    # wpm is an integer representing the number of words the user can read per minute; 
    # Returns an integer representing an estimate of the reading time in minutes for the contents
    return count_words / wpm.to_f.ceil
  end

  def reading_chunk(wpm, minutes) 
    contents_array = @contents.split
    total_words = wpm * minutes #(ex. 2*2 = 4)
    #p total_words

    start_index = @current_starting_index
    ending_index = start_index + total_words
    if ending_index < contents_array.length 
      text_chunk = contents_array[start_index,total_words].join(" ")
      @current_starting_index += total_words
      return text_chunk
    else
      text_chunk = contents_array[start_index..(ending_index - 1)].join(" ")
      @current_starting_index = 0
      return text_chunk
    end

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




