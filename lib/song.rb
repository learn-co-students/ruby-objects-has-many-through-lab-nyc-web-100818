# Song class is the JOIN TABLE
# Song belongs_to an artist / Song belongs_to a genre so we need an attr_accessor for both of those attributes
# Genre has_many songs & has_many artists THROUGH songs
# Artist has_many songs & has_many genres THROUGH songs
require 'pry'
class Song
  attr_accessor :artist, :genre
  attr_accessor :name

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end


  def self.all
    @@all
  end

end # end of Song class
