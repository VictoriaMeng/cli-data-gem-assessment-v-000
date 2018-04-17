class GameScraper
  attr_reader :html, :games, :names

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @games_html = @html.css("#tab_topsellers_content")
    @names = []
  end

  def get_names
    names = @games_html.css(".tab_item_name")
    names.each do |name|
      game = {}
      game[:name] = name.text
      @names << game
    end
  end

  def get_prices
  end
end
