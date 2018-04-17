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

  def run
    game_hashes
    say_hi
    show_instructions
    show_list
  end
end
