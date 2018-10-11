class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @artists = []
  end

  def self.all
    @@all
  end

  def artists
    my_songs = Song.all.select do |song|
      song.genre == self
    end

    my_artists = my_songs.map do |song|
      song.artist
    end

    my_artists
  end



end
