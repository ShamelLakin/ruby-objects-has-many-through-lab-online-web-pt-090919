class Artist 
  
  attr_accessor :name, :genre
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @genere = genre
    @@all << self
    # @songs = [] goes- 1
  end 
  def self.all 
    @@all
  end 
  
  def songs
    # @songs = Song.new(songs, self, genre) goes- 1
    Song.all.select {|song| song.artist == self}
  end
 

  def new_song(name, genre) 
    Song.new(name, self, genre)
  end 
  
  def genres 
    songs.collect {|song| song.genre}
  end 
  
end