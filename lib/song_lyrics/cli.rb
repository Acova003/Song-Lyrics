class SongLyrics::CLI
  def start
    puts "Welcome to the Song Lyrics Generator!"
    puts ""
    puts "Please enter the following information for your lyric request:"
    
    SongLyrics::ApiService.get_info
  end
end
