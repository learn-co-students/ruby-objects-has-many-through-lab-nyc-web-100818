class Genre 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artists = []
    @songs = []
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
  def artists                     
    my_songs = Song.all.select { |song| song.genre == self }
    my_songs.map { |song| song.artist }
  end

end 

