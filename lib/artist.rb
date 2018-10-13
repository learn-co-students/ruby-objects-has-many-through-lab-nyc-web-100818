class Artist

  attr_accessor :song, :genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def genres
    Song.all.map do |songs|
      if songs.artist == self
        songs.genre
      end
    end

  end

end
