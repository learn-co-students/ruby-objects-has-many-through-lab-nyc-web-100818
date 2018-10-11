class Song

  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self
    artist.songs << self
    @@all << self
  end

  def self.all
    @@all
  end


end
