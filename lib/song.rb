require 'pry'

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
  
  def self.artists
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] +=1
    end
    @@artists = artist_count.keys
  end
  
  def self.genre_count
    genre_count
  end
  def self.artist_count
    artist_count
  end
  
  
end