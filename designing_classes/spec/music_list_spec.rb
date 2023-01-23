require 'music_list'

describe MusicList do 
  context 'adds tracks and returns the list' do 
    it 'adds 1 listened to track to the list and returns this' do 
      track = MusicList.new
      track.add_music("September")
      expect(track.show_tracks).to eq "September"
    end 

    it 'adds 2 listened to tracks to the list and returns this' do 
      track = MusicList.new
      track.add_music("September")
      track.add_music("7 Rings")
      expect(track.show_tracks).to eq "September, 7 Rings"
    end 

    it 'adds 2 listened to tracks to the list and returns this' do 
      track = MusicList.new
      track.add_music("September")
      track.add_music("7 Rings")
      track.add_music("Levitating")
      expect(track.show_tracks).to eq "September, 7 Rings, Levitating"
    end 
  end 

  it 'fails if there are no tracks in the list' do 
    track = MusicList.new
    expect {track.show_tracks}.to raise_error "There are no tracks in your list."
  end 
end 