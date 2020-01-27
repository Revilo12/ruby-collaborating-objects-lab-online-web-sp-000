<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 18b930eef12d4280b1eb371e360243cc24a8c99d
class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
<<<<<<< HEAD
    data = /(?<artist>.+)\s-\s(?<song>.+)\s-\s(?<genre>.+).mp3/.match(filename)
    song = Song.new(data[:song])
    song.artist = Artist.find_or_create_by_name(data[:artist])
=======
    data = /(?<artist>)\s-\s(?<song>)\s-\s(?<genre>).mp3/.match(filename)
    song = Song.new(data[:song])
    song.artist = data[:artist]
>>>>>>> 18b930eef12d4280b1eb371e360243cc24a8c99d
    song.genre = data[:genre]
    song
  end

<<<<<<< HEAD
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
=======
  def artist_name
    self.artist.name
>>>>>>> 18b930eef12d4280b1eb371e360243cc24a8c99d
  end

end
