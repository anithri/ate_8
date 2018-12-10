# frozen_string_literal: true

describe Board do
  let(:board_locations) {
    Location.all.map do |loc|
      BoardLocation.new(location: loc)
    end
  }

  let (:board) { Board.new(board_locations) }

  it 'should have valid board_locations' do
    expect(board_locations).to all (be_a BoardLocation)
  end

  describe '.method_missing' do
    it 'should return board_location by location_id' do
      expect(board.bar.name).to eq 'Bar'
      expect(board.player1.name).to eq 'Player 1'
    end

    it 'should return [board_locations] for groups' do
      expect(board.players.length).to eq 4
    end
  end
end
