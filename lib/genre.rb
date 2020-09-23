class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |genre|
      song.genre == self
    end
  end

  def songs

  def artists
    songs.map {|name| name.artist}
  end

  def self.all
    @@all
  end

end
