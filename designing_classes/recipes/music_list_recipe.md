{{PROBLEM}} Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class MusicList 
  def initialize
  # ... 
  end 

  def add_music(track)
   # track will be a string (music track) the user has listened to 
   # returns nothing 
  end
  
  def show_tracks
   # return a list of the music tracks the user has listened to 
   # throw an error/exception if there are no tracks in the list 
  end 
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

track = MusicList.new
track.add_music("September")
track.show_tracks => "September"

track = MusicList.new
track.show_tracks => fails with "There are no tracks in your list."

track = MusicList.new
track.add_music("September")
track.add_music("7 Rings")
track.show_tracks => "September, 7 Rings"

track = MusicList.new
track.add_music("September")
track.add_music("7 Rings")
track.add_music("Levitating")
track.show_tracks => "September, 7 Rings, Levitating"

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.