require_relative 'cli'

class SongLyrics::ApiService

  def self.get_come_together
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Come%20Together")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_something
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Something")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_hey_jude
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Hey%20Jude")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_yesterday
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/yesterday")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_here_comes_the_sun
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Here%20Comes%20The%20Sun")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_a_day_in_the_life

    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/A%20Day%20In%20The%20Life")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_eleanor_rigby

    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Eleanor%20Rigby")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_because
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/because")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_let_it_be
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/Let%20It%20Be")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
    end
  end

  def self.get_all_you_need_is_love
    response = RestClient.get("https://api.lyrics.ovh/v1/The%20Beatles/All%20You%20Need%20Is%20Love")
    json = JSON.parse(response)
    json.each do |k, v|
      puts v
      #binding.pry
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
