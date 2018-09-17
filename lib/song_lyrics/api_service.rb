class SongLyrics::ApiService
  BASE_URL = "https://api.lyrics.ovh/v1/"

  def self.get_info
    #binding.pry
    puts 'Artist:'
    artist = gets.chomp
    puts 'Title:'
    title = gets.chomp
    response = BASE_URL + artist + "/" + title
    binding.pry
  end
end
