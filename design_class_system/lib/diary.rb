require 'diary_entry'
require 'todo_list'

class Diary
  def initialize
  @diary = []
  end

  def add(entry)
    @diary.push(entry)
  end

  def all 
    return @diary
  end

  def count_words
    @diary.sum(&:count_words)

  end

  def todo_list
    return TodoList.incomplete
  end 

  def reading_time(wpm)
    return count_words / wpm.to_f.ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    total_words_available = wpm * minutes 
    suitable_entries = []
    @diary.each do |entry|
      if entry.count_words <= total_words_available
        suitable_entries.push(entry)
      end
    end 

    suitable_entries = suitable_entries.sort_by(&:count_words)

    best_entry = suitable_entries[-1]

    return best_entry
  end 
  
  def extract_phone_numbers
    numbers_array = []
    @diary.each do |x|
      if x.extract_phone_number != []
        numbers_array << x.extract_phone_number
      end
    end 
    return numbers_array
  end  
end