class GameCli
  def initialize
  end

  def say_hi
    puts "Welcome to Steam Top-Sellers."
  end

  def show_instructions
    puts "Enter (1-30) to see game details."
  end

  def show_list
    Game.all.each_with_index do |game, index|
      puts "#{index + 1}. #{game.name}"
    end
  end

  def game_hashes
    Game.mass_create(GameScraper.new.run)
  end

  def valid_number?(input)
    ("1".."30").to_a.include?(input)
  end

  def get_input
    input = ""
    until valid_number?(input)
      show_instructions
      show_list
      input = gets.strip
    end
    input
  end

  def show_game(input)
    game = Game.all[input.to_i - 1]
    puts "Name: #{game.name}"
    puts "Price: #{game.price}"
  end

  def yes_no?(input)
    %w(y n yes no).include?(input.downcase)
  end

  def yes?(input)
    %w(y yes).include?(input.downcase)
  end

  def show_continue_message
    puts "See another game? (y/n)"
  end

  def continue?
    input = ""
    until yes_no?(input)
      show_continue_message
      input = gets.strip
    end
    yes?(input)
  end

  def say_bye
    puts "Thanks for using GameGem!"
  end

  def run
    game_hashes
    say_hi
    loop do
      show_game(get_input)
      break if !continue?
    end
    say_bye
  end
end
