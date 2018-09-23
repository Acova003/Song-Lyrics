class SongLyrics::CLI
  def start
    puts ""
    puts ""
    puts "                        Welcome to Beatles Mania!"
    puts ""
    puts "  Abbey Road is the eleventh studio album by English rock band the Beatles,
    released on 26 September 1969 by Apple Records. The recording sessions
    for the album were the last in which all four Beatles participated. It
         is considered one of the greatest rock albums of all time."
    puts ""
    puts "Choose which song on the Abbey Road album that you would like lyrics for: (1-17)"
    puts ""
    menu
  end

  def menu
    puts '1. Come Together'
    puts '2. Something'
    puts '3. Maxwell\'s Silver Hammer'
    puts '4. Oh! Darling'
    puts '5. Octopuses\'s Garden'
    puts '6. I Want You (She\'s So Heavy)'
    puts '7. Here Comes the Sun'
    puts '8. Because'
    puts '9. You Never Give Me Your Money'
    puts '10. Sun King'
    puts '11. Mean Mr. Mustard'
    puts '12. Polythene Pam'
    puts '13. She Came in Through the Bathroom Window'
    puts '14. Golden Slumbers'
    puts '15. Carry That Weight'
    puts '16. The End'
    puts '17. Her Majesty'
    input
  end

  def input
    puts '>'
    user_input = gets.strip
    case user_input
    when '1'
      #@url = "https://api.lyrics.ovh/v1/The%20Beatles/Come%20Together"
    end
    SongLyrics::ApiService.get_response
  end
end

#how can I call specific url in api service?
