require 'pry'

class Song

attr_accessor :name, :artist

@@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    song = self.new(name).tap{|s| s.save}
  end

  def artist=(song)
    artist.add_song(self)
  end

  def self.destroy_all
    all.clear
  end

end
