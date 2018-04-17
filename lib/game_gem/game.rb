class Game
  attr_accessor :name, :price

  @@all = []

  def initialize(attributes)
    attributes.each { |key, value| self.send("#{key}=", value) }
  end

  def self.mass_create(games)
    games.each { |game| @@all << Game.new(game) }
  end

  def self.all
    @@all
  end

end
