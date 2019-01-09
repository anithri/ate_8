module Game
  class Board
    attr_reader :board_contents, :spaces, :game_session

    def initialize(game_session)
      @game_session   = game_session
      @board_contents = game_session.board_contents
      @spaces         = @board_contents.reduce({}.with_indifferent_access) do |hsh, board_content|
        hsh[board_content.tile_id] = BoardSpace.new(board_content)
        hsh
      end

      Game::Bits::Tile::GROUPS.each do |group|
        @spaces[group.to_s] = @spaces.values_at(*Game::Bits::Tile.send(group).map(&:id))
      end
    end

    delegate :gid, to: :game_session
    delegate :[], to: :spaces

    def orientation
      Game::Bits::Rules::BOARD_ORIENTATIONS.sample
    end

    def deal(count, to:, from: :draw)
      spaces[to].deck.push(
        spaces[from].deck.pop(count)
      )
    end

    def active_workers
      Game::Bits::Tile.summary('active').reduce([]) do |arr, id|
        arr += @spaces[id].workers
        arr
      end
    end

    def dead_workers
      Game::Bits::Tile.summary('dead').reduce([]) do |arr, id|
        arr += @spaces[id].workers
        arr
      end
    end

    def pending_workers
      Game::Bits::Tile.summary('pending').reduce([]) do |arr, id|
        arr += @spaces[id].workers
        arr
      end
    end

    def respond_to_missing?(method_name, *args, &block)
      @spaces.has_key? method_name
    end

    def method_missing(method_name, *args, &block)
      spaces[method_name] || super
    end
  end
end
