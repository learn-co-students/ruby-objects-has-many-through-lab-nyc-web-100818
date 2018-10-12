class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all
  end
  
  def new_song(song, genre)
    Song.new(song, self, genre)
  end 
  
  def genres 
    my_songs = Song.all.select {|song| song.artist == self }
    my_songs.map { |song| song.genre }
  end 

end 