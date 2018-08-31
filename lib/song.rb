require"pry"
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
    @@genres.each do |genre| 
      if genres_hash[genre]
        genres_hash[genre] += 1
      else 
        genres_hash[genre]
      end
    end
    genres_hash
    
  end
  
  def self.artist_count
    
  end
  
    
end