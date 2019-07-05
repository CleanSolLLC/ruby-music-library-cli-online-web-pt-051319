require 'pry'

class Artist

attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
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

  def self.destroy_all
    all.clear
  end

end
