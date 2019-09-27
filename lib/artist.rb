<<<<<<< HEAD
class Artist
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :songs

  @@all = []
=======
require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []

>>>>>>> test

  def initialize(name)
    @name = name
    @songs = []
  end

<<<<<<< HEAD
  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    artist = new(name)
    artist.save
    artist

    # Or, as a one-liner:
    # new(name).tap{ |a| a.save }
  end

  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def genres
    songs.collect{ |s| s.genre }.uniq
  end
=======
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

>>>>>>> test
end
