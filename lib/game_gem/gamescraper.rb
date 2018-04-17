class GameScraper
  attr_reader :games

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @games_html = @html.css("#tab_topsellers_content a")
    @games = []
  end

  def run
    @games_html.each do |game|
      fields = {}
      fields[:name] = game.css(".tab_item_name").text
      fields[:price] = game.css(".discount_final_price").text
      @games << fields
    end
  end

end
