require_relative 'cli'

class SongLyrics::ApiService

  def self.get_response
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Come%20Together")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      binding.pry
    end
  end
end

#create a list of info
#how can I grab user input from cli.rb and add it to the api request?
#artist = the beatles
#title = come together
#BASE_URL + artist + title

#I'm going to create a scraping menu to assure correct get_response
#when the wrong url is applied, there is a long error
