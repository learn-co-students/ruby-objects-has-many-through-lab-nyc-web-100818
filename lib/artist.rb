require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

# #songs method iterates through the whole Song class (Song.all) with .select and checks when self(the current instance of Artist) matches the song.artist
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

# Artist instances have many genres, through songs. Calls on #songs method defined above, #songs method already returns an array with all songs that match current Artist instance.
# We can use .map to return an array with all genres that belong to the current instance of Artist (through songs)

  def genres
    songs.map do |song|
      song.genre
    end
  end

end

# binding.prys
