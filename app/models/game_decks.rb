class GameDecks

  attr_accessor :board_locations

  def initialize(board_locations)
    @card_locations = board_locations.select{|b_loc| b_loc.location.has_cards?}
    @group_idx       = @card_locations.group_by(&:grouping)
    @loc_id_idx      = @card_locations.reduce({}.with_indifferent_access) do |hsh, b_loc|
      hsh[b_loc]             = b_loc
      hsh[b_loc.location_id] = b_loc
      hsh
    end
  end

  def by_group(group)
    @group_idx[group]
  end

  def by_loc_id(loc_id)
    @loc_id_idx[loc_id]
  end

  def draw
    by_loc_id 'draw'
  end

  def discards
    by_loc_id 'discards'
  end

  def deal(to:, count: 1)
    dest = by_loc_id(to)
    dest.bag.push(draw.bag.pop(count))
    dest
  end
end
