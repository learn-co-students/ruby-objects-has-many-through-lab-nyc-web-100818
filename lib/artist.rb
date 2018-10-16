class Artist
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  # argument:name ,genre
  # create a new song
  # song belongs to an artist
  def new_song(song_name, genre)
    Song.new(song_name,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

end
