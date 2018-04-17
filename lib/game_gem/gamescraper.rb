class GameScraper
  attr_reader :html, :fields

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @fields = []
  end

  def get_names
    games = @html.css("#tab_topsellers_content")
    names = games.css(".tab_item_name")
    names.each do |name|
      game = {}
      game[:name] = name.text
      @fields << game
    end
  end
end
