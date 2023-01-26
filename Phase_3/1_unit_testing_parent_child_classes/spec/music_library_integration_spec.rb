require 'track'
require "music_library"

describe 'Integration tests' do 

  it 'returns an empty array when no tracks are added' do 
    track_list = MusicLibrary.new
    expect(track_list.all).to eq []
  end

  context 'adds tracks and returns the list' do 
    it 'adds 1 listened to track to the list and returns this' do 
      track1 = Track.new("7 Rings", "Ariana Grande")
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      expect(music_list1.all).to eq [track1]
    end 

    it 'adds 2 listened to track to the list and returns these' do 
      track1 = Track.new("7 Rings", "Ariana Grande")
      track2 = Track.new("Rumors", "Lizzo")
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      music_list1.add(track2)
      expect(music_list1.all).to eq [track1, track2]
    end 
  end 
  
  context 'searches tracks for a keyword and returns a list of matching tracks' do
    it 'searches when no tracks have been added' do 
      music_library = MusicLibrary.new
      expect(music_library.search("")).to eq []
    end
    
    it 'adds and searches 1 track' do 
      track1 = Track.new("7 Rings", "Ariana Grande")
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      expect(music_list1.search("Rings")).to eq [track1]
    end 

    it 'adds and searches 2 tracks' do 
      track1 = Track.new("7 Rings", "Ariana Grande")
      track2 = Track.new("Rumors", "Lizzo")
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      music_list1.add(track2)
      expect(music_list1.search("Liz")).to eq [track2]
    end 

    it 'adds and searches 3 tracks - returning 2 tracks' do 
      track1 = Track.new("7 Rings", "Ariana Grande")
      track2 = Track.new("Rumors", "Lizzo")
      track3 = Track.new("Grrrls", "Lizzo")

      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      music_list1.add(track2)
      music_list1.add(track3)
      expect(music_list1.search("Liz")).to eq [track2, track3]
    end 
  end

end 