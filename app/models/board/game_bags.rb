module Board
  class GameBags
    attr_accessor :board_locations

    def initialize(board_locations)
      @worker_locations = board_locations.select { |b_loc| b_loc.location.has_workers? }
      @group_idx        = board_locations.group_by(&:grouping)
      @board_locations  = board_locations
      @loc_id_idx       = board_locations.reduce({}.with_indifferent_access) do |hsh, b_loc|
        hsh[b_loc]             = b_loc
        hsh[b_loc.location_id] = b_loc
        hsh
      end
    end

    def by_group(group)
      @group_idx[group]
    end

    def by_loc(loc)
      @loc_id_idx[loc]
    end

    def draw
      by_loc 'draw'
    end

    def discards
      by_loc 'discards'
    end

    def deal(worker:, to:, count: 1)
      dest = by_loc(to)
      dest.deck.push(draw.deck.pop(count))
      dest
    end

    def deck
      @deck ||= Board::Deck.new(self)
    end

    def bag
      @bag ||= Board::Bag.new(self)
    end

    # def add_cards(*new_cards)
    #   card_ids.push(new_cards.flatten.map(&:gid))
    # end
    # def remove_cards(count)
    #   card_ids.pop(count)
    # end
    # def cards
    #   Card.locate_many card_ids
    # end
    # def cards=(new_cards)
    #   self.card_ids = new_cards.map{|c| c.gid}
    # end

  end
end