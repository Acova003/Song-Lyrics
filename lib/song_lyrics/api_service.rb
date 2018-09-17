class SongLyrics::ApiService
  BASE_URL = "https://api.lyrics.ovh/v1/"

  def self.get_info
    #binding.pry

    response = RestClient.get(BASE_URL)
    SongLyrics::Info.new(artist, title)
    #binding.pry
  end
end
