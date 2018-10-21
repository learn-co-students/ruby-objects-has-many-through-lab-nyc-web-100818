require 'pry'
"../ruby-objects-has-many-through-lab-nyc-web-100818/lib"

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #creates NEW song assoc with that artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  #artist HAS MANY songs
  def songs
    Song.all.select{|song| song.artist == self}
  end

  #HAS MANY genres thru songs
  def genres
    songs.map{|song| song.genre}
  end
end