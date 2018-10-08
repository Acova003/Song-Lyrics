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
    @user_input = gets.strip
    if @user_input.to_i.between?(1,10)
      #binding.pry
      SongLyrics::ApiService.get_lyrics(@user_input)
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
