class MusicList 
  def initialize
    @music_list = []
  # ... 
  end 

  def add_music(track)
   # track will be a string (music track) the user has listened to 
   # returns nothing 
    @music_list.push(track)
  end
  
  def show_tracks
   # return a list of the music tracks the user has listened to 
   # throw an error/exception if there are no tracks in the list 
    fail "There are no tracks in your list." if @music_list.empty?
    return @music_list.join(", ")
  end 
end