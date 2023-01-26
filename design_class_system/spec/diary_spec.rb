require 'diary'
require 'diary_entry'

RSpec.describe 'Integration' do
  it 'returns an empty array when there are no diary entries' do 
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it 'returns 1 diary entry when 1 has been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)

    expect(diary.all).to eq [diary_entry1, diary_entry2]
  end

  it 'returns 2 diary entries when 2 have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary.add(diary_entry1)
    expect(diary.all).to eq [diary_entry1]
  end

  it 'returns a total word count of 2 diary entries when 2 have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 6
  end

  it 'returns the reading time for all diary entries that have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.count_words
    expect(diary.reading_time(2)).to eq 3
  end

  it 'finds the best diary entry for the reading time available' do
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.find_best_entry_for_reading_time(2, 2)).to eq diary_entry2
  end

  it "searches the diary for phone numbers" do 
    diary_entry1 = DiaryEntry.new("One", "My phone number is 07800000000")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.extract_phone_numbers).to eq [["07800000000"]]
  end 

  it "searches the diary for phone numbers" do 
    diary_entry1 = DiaryEntry.new("One", "My phone number is 07800000000 and my friends is 07800000001")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.extract_phone_numbers).to eq [["07800000000", "07800000001"]]
  end 

  it "searches the diary for phone numbers" do 
    diary_entry1 = DiaryEntry.new("One", "My phone number is 07800000000 and my friends is 07800000001")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green 07800000003")
    diary_entry3 = DiaryEntry.new("Hello", "Red orange yellow blue 07800000004")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.add(diary_entry3)
    expect(diary.extract_phone_numbers).to eq [["07800000000", "07800000001"], ["07800000003"], ["07800000004"]]
  end 

  it "returns a list of incomplete todos" do 
      diary = Diary.new
      todolist = TodoList.new
      todo1 = Todo.new("Laundry")
      todo1.mark_done!
      todolist.add(todo1)
      expect(todolist.complete).to eq [todo1]
    end

end   