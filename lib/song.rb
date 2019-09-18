class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 # increments @@count by 1 every time a song is created.
    @@genres << genre # adds genre to @@genres array evey time a song is created.
    @@artists << artist # adds artist to @@artists array evey time a song is created.
  end

  # creates a class method .count that returns the total number of songs created.
  def self.count
    @@count
  end

  # creates a class method .genres that returns an array of all the unique genres of existing songs.
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each {|genre| genre_count[genre] += 1}
    return genre_count
  end

  # creates a class method .artists that returns an array of all the unique artists of existing songs.
  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each {|artist| artist_count[artist] += 1}
    return artist_count
  end

end
