class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs

  end

  def new_song

  end

  def genres

  end

  def self.all
    @@all
  end
end
