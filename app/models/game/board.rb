module Game
  class Board
    attr_reader :board_data, :boards, :game_data

    def initialize(game_data)
      @game_data  = game_data
      @board_data = game_data.board_data
      @boards     = game_data.board_data.reduce({}.with_indifferent_access) do |hsh, board_datum|
        hsh[board_datum.location_id] = BoardSpace.new(board_datum)
        hsh
      end

      ::Board::Location::GROUPS.each do |group|
        @boards[group.to_s] = @boards.values_at(*::Board::Location.send(group).map(&:id))
      end
    end

    delegate :to_global_id, to: :game_data
    delegate :[], to: :boards

    def deal(count, to:, from: :draw)
     boards[to].deck.push(
       boards[from].deck.pop(count)
     )
    end

    def respond_to_missing?(method_name, *args, &block)
      @boards.has_key? method_name
    end

    def method_missing(method_name, *args, &block)
      boards[method_name] || super
    end
  end
end
