class Genre 
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 

  def artists(name, song)
    Song.all.select do | song |
      song.genre = self 
    end 
  end 

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song 
  end 

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

   def artists
    songs.map do |song|
      song.artist
    end
  end

  def self.all 
    @@all
  end 
end 