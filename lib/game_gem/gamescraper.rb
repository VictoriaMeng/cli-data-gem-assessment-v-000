class GameScraper

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @games_html = @html.css("#tab_topsellers_content a")
  end

  def run
    @games_html.map do |game|
      fields = {}
      fields[:name] = game.css(".tab_item_name").text
      fields[:price] = game.css(".discount_final_price").text
      fields
    end
  end

end
