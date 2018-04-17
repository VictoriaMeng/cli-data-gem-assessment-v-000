class GameCli
  def initialize
  end

  def say_hi
    puts "Welcome to Steam Top-Sellers."
  end

  def show_list
    Game.all.each_with_index do |game|
      puts "#{index + 1}. #{game.name}"
    end
  end

  def game_hashes
    
  end

  def run
    say_hi
    show_list
  end
end
