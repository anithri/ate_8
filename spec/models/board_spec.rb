# frozen_string_literal: true

describe Board do
  let(:board_locations) {
    Location.all.map do |loc|
      BoardLocation.new(location: loc)
    end
  }

  it 'should have valid board_locations' do
    expect(board_locations).to have_length Location.count
  end
end
