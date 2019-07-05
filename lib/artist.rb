require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = self.new(name).tap{|s| s.save}
  end

  def add_song(song)
    @songs << song unless self.songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def self.destroy_all
    all.clear
  end

end
