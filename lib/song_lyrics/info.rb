class SongLyrics::Info
  attr_accessor :artist, :title

  @@all = []

  def initialize(artist, title)
    @artist = artist
    @title = title
    @@all << self
  end
end
