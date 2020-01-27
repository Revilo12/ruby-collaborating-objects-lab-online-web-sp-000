require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

<<<<<<< HEAD
  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
=======
  def find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
    binding.pry
>>>>>>> 18b930eef12d4280b1eb371e360243cc24a8c99d
    if found
      found
    else
      Artist.new(name)
    end
  end

  def print_songs
<<<<<<< HEAD
    self.songs.each {|song| print "#{song.name}\n"}
=======
    self.all.each {|song| print "#{song.name}\n"}
>>>>>>> 18b930eef12d4280b1eb371e360243cc24a8c99d
  end

end
