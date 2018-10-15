class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs # giving u all the songs that belong to this Artist
    Song.all.select do |song_object|
      # want the song object's artist attribute (which is an INSTANCE OF ARTIST)
      # to == self which is an INSTANCE OF ARTIST
      song_object.genre == self
    end
  end

  def artists # iterate through songs to get the artists
    songs.map do |song|
      song.artist
    end
  end


  def self.all
    @@all
  end



end # end of Genre class
