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

  it 'can save mass created games' do 
    Game.mass_create([{name: "Skyrim", price: "$39.99"}, {name: "Fallout New Vegas", price: "$9.99"}])
    expect(Game.all.count).to eql(2)
  end
end