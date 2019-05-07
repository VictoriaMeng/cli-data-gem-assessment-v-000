require_relative '../lib/game_gem/game'

RSpec.describe Game do
  let(:skyrim) { Game.new({name: "Skyrim", price: "$39.99"}) }
  let(:fnv) { Game.new({name: "Fallout New Vegas", price: "$9.99"}) }

  it 'has a name and price' do
    expect(skyrim.name).to eql("Skyrim")
    expect(skyrim.price).to eql("$39.99")
    
    expect(fnv.name).to eql("Fallout New Vegas")
    expect(fnv.price).to eql("$9.99")
  end

  context 'when mass creating games' do 
    before(:context) do 

    end
  end
end