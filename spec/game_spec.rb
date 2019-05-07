require_relative '../lib/game_gem/game'

RSpec.describe Game do
  subject { Game.new({name: "Skyrim", price: "$39.99"}) }

  it 'has a name and price' do
    expect(subject.name).to eql("Skyrim")
    expect(subject.price).to eql("$39.99")
  end
end