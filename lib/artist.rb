class Artist


attr_accessor :name, :songs

  @@all = []  #class variable

  def initialize(name)
    @name = name
    @@all << self #push self into all array (An artist is initialized with a name and is saved in the @@all array.)  end
    @songs = []
  end

  def self.all  #calls the @@all class *lists each artist in the class varaible
    @@all
  end


  def genres
    #looping throuhg all the Songs class array
    my_songs = Song.all.select do |song| song.artist == self #and checking if the self is same
    end
    my_songs.map do |song| song.genre
    end
  end

# The Artist class needs an instance method, #new_song, that takes in an argument
# of a name and genre creates a new song. That song should know that it belongs to
# the artist.

  def new_song(name, genre)
    Song.new(name, self, genre) #<- creates new song  # given a name and genre, creates a new song associated with that artist
  end

end
