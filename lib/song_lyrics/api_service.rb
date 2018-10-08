require_relative 'cli'

class SongLyrics::ApiService

  BASE_URL = "https://api.lyrics.ovh/v1/The%20Beatles/"

  DATA_HASH = {
    "1" => "Come Together",
    "2" => "Something",
    "3" => "Hey Jude",
    "4" => "Yesterday",
    "5" => "Here Comes the Sun",
    "6" => "A Day in the Life",
    "7" => "Eleanor Rigby",
    "8" => "Because",
    "9" => "Let it Be",
    "10" => "All You Need is love"
  }

  def self.get_lyrics(user_input)
    #return value of this method is the lyrics
    #binding.pry
    converted_url = URI::encode(DATA_HASH[user_input])
    response = RestClient.get(BASE_URL + converted_url) # + DATA_HASH[CLI user_input]
    json = JSON.parse(response) #+ value of corresponding key in DATA_HASH
    puts json['lyrics']
  end
end
