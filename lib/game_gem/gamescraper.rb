class GameScraper
  attr_reader :html, :games, :names, :prices

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @games_html = @html.css("#tab_topsellers_content")
    @names = []
    @prices = []
  end

  def get_names
    names = @games_html.css(".tab_item_name")
    names.each { |name| @names << name.text }
  end

  def get_prices
    prices = @games_html.css(".discount_final_price")
    prices.each { |price| @prices << price.text }
  end

  def run
    get_prices
    get_names
  end
end
