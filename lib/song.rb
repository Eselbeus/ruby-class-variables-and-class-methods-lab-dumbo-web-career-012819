class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end
  def self.count
    @@count
  end
  def self.genres 
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] +=1
    end
    
    @@genres = genre_count.keys
  end
  self.artists
    
  end
  # self.genre_count
  
  # end
  # self.artist_count
    
  # end
  
  
end