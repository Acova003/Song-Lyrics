class SongLyrics::CLI
  def start
    puts ""
    puts ""
    puts "                        Welcome ".blue + "to " + "Beatles Mania!".red
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ""
    puts ""
    menu
  end

  def menu
    puts ""
    puts "Choose which Beatles hit you would like to know more about: (1-10)"
    puts ""
    puts '1. Come Together'
    puts '2. Something'
    puts '3. Hey Jude'
    puts '4. Yesterday'
    puts '5. Here Comes the Sun'
    puts '6. A Day in the Life'
    puts '7. Eleanor Rigby'
    puts '8. Because'
    puts '9. Let It Be'
    puts '10. All You Need Is Love'
    input
  end

  def input
    puts '>'
    user_input = gets.strip
    case user_input
      when '1'
        SongLyrics::ApiService.get_come_together
      when '2'
        SongLyrics::ApiService.get_something
      when '3'
        SongLyrics::ApiService.get_hey_jude
      when '4'
        SongLyrics::ApiService.get_yesterday
      when '5'
        SongLyrics::ApiService.get_here_comes_the_sun
      when '6'
        SongLyrics::ApiService.get_a_day_in_the_life
      when '7'
        SongLyrics::ApiService.get_eleanor_rigby
      when '8'
        SongLyrics::ApiService.get_because
      when '9'
        SongLyrics::ApiService.get_let_it_be
      when '10'
        SongLyrics::ApiService.get_all_you_need_is_love
      else
        puts "Invalid input. Please choose a number between 1-10".red
        menu
    end
    continue?
  end

  def continue?
    puts ""
    puts "To choose another song, type '1'. To exit, type '2'"
    user_input = gets.strip
    if user_input == '1'
      menu
    elsif user_input == '2'
      goodbye
    else
      puts "Invalid input. Please type '1' or '2'".red
      continue?
    end
  end

  def goodbye
    puts "Goodbye"
  end
end

#how can I call specific url in api service?
