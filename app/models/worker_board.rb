class WorkerBoard
  attr_accessor :board_locations

  def initialize(board_locations)
    @group_idx       = board_locations.group_by(&:grouping)
    @board_locations = board_locations
    @loc_id_idx      = board_locations.reduce({}.with_indifferent_access) do |hsh, b_loc|
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
    dest.deck.push(draw.deck.pop(count))
    dest
  end
end
