require 'pry'

class Genre
  attr_reader :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #has many songs
  def songs
    Song.all.select{|song| song.genre == self}

  end

  #has many artists THRU songs
  def artists
    songs.map {|song| song.artist}
  end

  def self.all
    @@all
  end

end