require 'pry'
class Genre

  attr_accessor :name, :song, :artist
@@all = []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end

def songs
  Song.all.select do |songs|
    songs.genre == self
  # binding.pry
  end
end

def artists
  songs.map do |song|
    song.artist
  end
end
 # has many artists, through songs


end #end of Genre class
