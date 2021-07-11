require 'pry'

# The Genre model:
#
# The Genre class needs a class variable @@all that begins as an empty array.
# The Genre class needs a class method .all that lists each genre in the class variable.
# A genre should be initialized with a name and be saved in the @@all array.
# The Genre class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that genre.
# The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
# Now let's move on to our Doctor/Appointment/Patient domain model.

class Genre
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# #songs method iterates through the whole Song class (Song.all) with .select and checks when self(the current instance of Genre) matches the song.genre
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

# Genre instances have many artists, through songs. Calls on #songs method defined above, #songs method already returns an array with all songs that match current Genre instance.
# We can use .map to return an array with all artist that belong to the current instance of Genre (through songs)
  def artists
    songs.map do |song|
      song.artist
    end
  end

end

# binding.pry
