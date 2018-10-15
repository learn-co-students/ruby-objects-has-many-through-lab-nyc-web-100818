class Artist

attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

# that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
def new_song(name, genre)
  Song.new(name, self, genre)
end

# that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
def songs
  Song.all.select do |song|
    song.artist == self
  end
end

 # has many artists, through songs
def genres
songs.map do |song|
  song.genre
end
end
  # Artist instances have many genres, through songs. Calls on #songs method defined above, #songs method already returns an array with all songs that match current Artist instance.
  # We can use .map to return an array with all genres that belong to the current instance of Artist (through songs)


#genres that iterates over that artist's songs and collects the genre of each song.

end #end of Artist class
