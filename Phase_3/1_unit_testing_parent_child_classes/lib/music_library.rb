require 'track'


class MusicLibrary
  def initialize
    @all_tracks = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
    @all_tracks << track
  end

  def all
    # Returns a list of track objects
    return @all_tracks
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword


  end
end

track_list = MusicLibrary.new
puts track_list.all