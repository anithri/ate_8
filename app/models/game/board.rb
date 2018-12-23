module Game
  class Board
    attr_reader :board_data
    def initialize(board_data)
      @board_data = board_data
    end

    def all
      board_data.where(location_id: ::Board::Location.all.map(&:id))
    end
    def cards
      board_data.where(location_id: ::Board::Location.cards.map(&:id))
    end
    def common
      board_data.where(location_id: ::Board::Location.common.map(&:id))
    end
    def players
      board_data.where(location_id: ::Board::Location.players.map(&:id))
    end
    def projects
      board_data.where(location_id: ::Board::Location.projects.map(&:id))
    end
    def workers
      board_data.where(location_id: ::Board::Location.workers.map(&:id))
    end

  end
end
