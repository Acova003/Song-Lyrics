class SongLyrics::Info
  attr_accessor :artist, :title, :lyrics

  def initialize(artist, title)
    @artist = artist
    @title = title
  end
end
