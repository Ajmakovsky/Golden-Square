class DiaryEntry
  def initialize(title, contents)
    @title = title 
    @contents = contents
    @current_starting_index = 0 
  end

  def title 
    return @title 
  end

  def contents 
    return @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm)
    return (count_words / wpm.to_f).ceil
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
    
  end

  def extract_phone_number
    numbers_array = []
    i = 0
    @contents.scan(/(0[1-6][0-9]{8,10}|07[0-9]{9})/).length.times do 
      numbers_array << @contents.scan(/(0[1-6][0-9]{8,10}|07[0-9]{9})/)[i]
      i += 1 
    end
    return numbers_array.flatten
  end 
end