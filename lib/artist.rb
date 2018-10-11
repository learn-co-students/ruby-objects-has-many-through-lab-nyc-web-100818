class Artist
  attr_reader :name, :songs, :genre

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    song_name = Song.new(song_name, self, genre)
    @songs << song_name
    song_name
  end

  def genres
    @songs.collect do |instance|
      instance.genre
    end
  end

end
