require 'pry'

# The Artist model:
#
# The Artist class needs a class variable @@all that begins as an empty array
# The Artist class needs a class method .all that lists each artist in the class variable
# An artist is initialized with a name and is saved in the @@all array.
# The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
# The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.
# The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.

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
