class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre unless @@genres.include?(genre)
    @@artists << @artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genres_hash = Hash.new(0)
    if 
    genres_hash.tap { |hash| @@genres.each { |genre| hash[genre] += 1 } }
  end
  
  def self.artist_count
    artists_hash = Hash.new(0)
    artists_hash.tap { |hash| @@artists.each { |artist| hash[artist] += 1 } }
  end
  
    
end