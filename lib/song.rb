class Song

attr_accessor :name, :genre, :artist

@@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  genre.songs << self #when we create a song. we push the songs into the variable genre. and when we create a genre, it will push into the genre
  @@all << self      #code right above .songs is calling the genre's.rb array
  artist.songs << self
end

def self.all
  @@all
end


end
