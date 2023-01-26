#require 'track'
require "music_library"

Rspec.describe 'Integration tests' do 

  it 'returns an empty array when no tracks are added' do 
    track_list = MusicLibrary.new
    expect(track_list.all).to eq []
  end

  # context 'adds tracks and returns the list' do 
  #   it 'adds 1 listened to track to the list and returns this' do 
  #     track = MusicList.new
  #     track.add_music("September")
  #     expect(track.show_tracks).to eq "September"
  #   end 

  #   it 'adds 2 listened to tracks to the list and returns this' do 
  #     track = MusicList.new
  #     track.add_music("September")l
  #     track.add_music("7 Rings")
  #     expect(track.show_tracks).to eq "September, 7 Rings"
  #   end 

  #   it 'adds 2 listened to tracks to the list and returns this' do 
  #     track = MusicList.new
  #     track.add_music("September")
  #     track.add_music("7 Rings")
  #     track.add_music("Levitating")
  #     expect(track.show_tracks).to eq "September, 7 Rings, Levitating"
  #   end 
end 