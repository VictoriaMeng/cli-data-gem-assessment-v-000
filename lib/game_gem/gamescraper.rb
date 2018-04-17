class GameScraper
  attr_reader :html, :fields

  def initialize
    @html = Nokogiri::HTML(open("http://store.steampowered.com/"))
    @fields = {}
  end
end
