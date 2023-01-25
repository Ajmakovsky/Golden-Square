require 'diary_entry'

describe DiaryEntry do
  it " returns title string" do
      diary_entry1 = DiaryEntry.new("Today","Good day")
      expect(diary_entry1.title).to eq "Today"
      expect(diary_entry1.contents).to eq "Good day"
  end

  it "Returns the number of words in the contents as an integer" do
      diary_entry1 = DiaryEntry.new("Today","Good day")
      expect(diary_entry1.count_words).to eq 2
  end

  it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
      diary_entry1 = DiaryEntry.new("Today","Good day " * 10)
      expect(diary_entry1.reading_time(1)).to eq 20
      expect(diary_entry1.reading_time(10)).to eq 2
  end

  it "Returns a chunk of text based on WPM and available minutes." do
    diary_entry = DiaryEntry.new("Today","Lorem Ipsum is simply dummy text of the printing and typesetting industry")
    expect(diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
    expect(diary_entry.reading_chunk(2,1)).to eq "dummy text"
    expect(diary_entry.reading_chunk(2,3)).to eq "of the printing and typesetting industry"
    expect(diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
    expect(diary_entry.reading_chunk(2,6)).to eq "dummy text of the printing and typesetting industry"
    expect(diary_entry.reading_chunk(2,2)).to eq "Lorem Ipsum is simply"
  end

  it "searches the diary entry for a phone number" do 
    diary_entry = DiaryEntry.new("One", "My phone number is 07800000000")
    expect(diary_entry.extract_phone_number).to eq ["07800000000"]
  end 

  it "searches the diary entry for multiple phone numbers" do 
    diary_entry = DiaryEntry.new("One", "My phone number is 07800000000 and my friends is 07800000001")
    expect(diary_entry.extract_phone_number).to eq ["07800000000", "07800000001"]
  end 
end