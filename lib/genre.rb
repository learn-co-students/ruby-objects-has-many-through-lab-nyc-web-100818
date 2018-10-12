class Genre

  attr_accessor :name, :song, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @artist = artist
    @song = song
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre = self}
  end

  def artists
    Song.all.map do |songs|
      if songs.genre == self
        songs.artist
      end
    end
  end


end
