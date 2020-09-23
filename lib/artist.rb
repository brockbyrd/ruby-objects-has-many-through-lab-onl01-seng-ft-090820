class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song, name, genre)
    Song.new(name, self, name, genre)
  end

  def genres(name, genre)
    Song.new(name, genre)
  end

  def self.all
    @@all
  end
end
