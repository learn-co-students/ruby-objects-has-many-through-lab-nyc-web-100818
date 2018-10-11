class Genre

attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self #pushes all the genre's into the array
    @artist = []
  end

    def self.all
      @@all
    end

    
    #The Genre class needs an instance method, #songs, that iterates through all
    #songs and finds the songs that belong to that genre.
  def artists
    # Song.all <- putting all of the songs in array
    #need to look at all the songs that belong to this genre
     my_songs = Song.all.select do |song|
       song.genre == self #<- this is checking through the list of songs that were created and then checking through songs and genre and seeing which equals to the self that was created
      end
      #need to get the artist's info from this genre's song
      #return this genre's artists
    my_artist = my_songs.map do |song|
        song.artist
      end
    my_artist
  end


end
