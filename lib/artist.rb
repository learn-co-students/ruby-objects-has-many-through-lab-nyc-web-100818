class Artist

  attr_reader :name
  @@all = [] # Class variable: it will keep track of ALL the song instances

  # -- INSTANCE METHODS --
  def initialize(name) # initialized w a name
    @name = name
    @@all << self # saved in the @@all array
  end

  def new_song(name, genre)
    # creates a new song, so we need to do Song.new....
    new_song = Song.new(name, self, genre)
    # new_song.artist = self
  end

  def songs # giving u all the songs that belong to this Artist
    Song.all.select do |song_object|
      # want the song object's artist attribute (which is an INSTANCE OF ARTIST)
      # to == self which is an INSTANCE OF ARTIST
      song_object.artist == self
    end
  end

  def genres # can map through songs method to now get the genres for this artist
    songs.map do |song|
      song.genre # gets the genres related to the artist's songs
    end
  end

  # -- CLASS METHODS --
  def self.all # Reads out the contents of @@all class variable
    @@all
  end


end # end of Artist class
