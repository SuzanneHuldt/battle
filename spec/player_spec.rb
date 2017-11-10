require 'player.rb'

describe Player do
  describe "#name" do
    it "returns name of the player" do
      player = Player.new('suze')
      expect(player.name).to eq 'suze'
    end
  end
end
