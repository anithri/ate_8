class CardBoard

  attr_accessor :board_locations, :by_group, :by_loc_id

  def initialize(board_locations)
    @by_group        = Hash.new { |h, k| h[k] = [] }.with_indifferent_access
    @board_locations = board_locations
    @by_loc_id           = board_locations.reduce({}.with_indifferent_access) do |hsh, b_loc|

      hsh[b_loc.location_id] = b_loc
      @by_group[b_loc.grouping] << b_loc
      hsh
    end
  end

  def draw
    by_loc_id['draw']
  end

  def discards
    by_loc_id['discards']
  end

  def deal(to:, count: 1)
    dest = by_loc_id[to.is_a?(Location) ? to.id : to]
    puts dest.inspect
    dest.add_cards(draw.remove_cards(count))
    dest
  end
end
