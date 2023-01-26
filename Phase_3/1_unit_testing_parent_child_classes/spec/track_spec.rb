require 'track'

describe Track do 
  context 'returns true if the keyword is in the title or artist; and false if not included'
    it 'returns true if the keyword is in the title' do
      track = Track.new("Rumors", "Lizzo")
      expect(track.matches?("Rumors")).to eq true
    end
    it 'returns true if the keyword is in the artist' do
      track = Track.new("Rumors", "Lizzo")
      expect(track.matches?("Lizzo")).to eq true
    end
    it 'returns false if the keyword is not in the artist or title' do
      track = Track.new("Rumors", "Lizzo")
      expect(track.matches?("Bananas")).to eq false
    end

end 
