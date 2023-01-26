require 'music_library'

describe MusicLibrary do 
  it 'initializes and returns an empty array of tracks' do 
    music_library = MusicLibrary.new
    expect(music_library.all).to eq []
  end

  it 'adds a track' do 
    music_library = MusicLibrary.new
    music_library.add("hello")
    expect(music_library.all).to eq ["hello"]
  end

  it 'adds 2 listened to track to the list and returns these' do 
    music_list1 = MusicLibrary.new
    track1 = double :track
    track2 = double :track
    music_list1.add(track1)
    music_list1.add(track2)
    expect(music_list1.all).to eq [track1, track2]
  end 

  context 'searches tracks' do 
    it 'searches when no tracks have been added' do 
      music_library = MusicLibrary.new
      expect(music_library.search("")).to eq []
    end
    
    it 'adds and searches 1 track' do 
      track1 = double :track, matches?: true
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      expect(music_list1.search("Rings")).to eq [track1]
    end 

    it 'adds and searches 2 tracks' do 
      track1 = double :track, matches?: false
      track2 = double :track, matches?: true
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      music_list1.add(track2)
      expect(music_list1.search("Liz")).to eq [track2]
    end 

    it 'adds and searches 3 tracks - returning 2 tracks' do 
      track1 = double :track, matches?: false
      track2 = double :track, matches?: true
      track3 = double :track, matches?: true
      music_list1 = MusicLibrary.new
      music_list1.add(track1)
      music_list1.add(track2)
      music_list1.add(track3)
      expect(music_list1.search("Liz")).to eq [track2, track3]
    end 

    it 'adds and searches 2 tracks' do 
      music_list1 = MusicLibrary.new
      track1 = double :track
      expect(track1).to receive(:matches?).with("Liz").and_return(false)
      track2 = double :track
      expect(track2).to receive(:matches?).with("Liz").and_return(true)
      music_list1.add(track1)
      music_list1.add(track2)
      expect(music_list1.search("Liz")).to eq [track2]
    end 

  end
end