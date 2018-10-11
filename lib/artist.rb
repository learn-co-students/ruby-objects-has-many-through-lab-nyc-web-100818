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

  def genres
    my_songs = Song.all.select { |song| song.artist == self }
    my_songs.map { |song| song.genre }
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end



end
