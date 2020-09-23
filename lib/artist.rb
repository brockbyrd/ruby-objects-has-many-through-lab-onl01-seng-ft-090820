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

  def new_song(name, genre)
    Song.new(name, genre)
  end

  def genres
    Song.all.select do |genre|
      song.genre == self
    end
  end

  def self.all
    @@all
  end
end
