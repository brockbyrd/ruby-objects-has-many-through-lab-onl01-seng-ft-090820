class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artists
    Song.all.select do |genre|
      song.genre == self
    end
  end

  def self.all
    @@all
  end

end
