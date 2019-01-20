module Game
  class Project
    attr_accessor :board_space

    def initialize(board_space)
      @board_space = board_space
    end

    delegate :bag, :deck, :id, :gid, :name, :tile, to: :board_space
    delegate :slug, to: :tile

    def card
      deck.cards[0]
    end

    def required_workers
      card.workers
    end

    def workers
      required_workers.zip(bag.workers).map do |need, have|
        need.satisfy!(need == have)
      end
    end

    def assign_workers_for_project!
      faked = required_workers.map{|w| rand(2).zero? ? nil: w.id}
      bag.required!(faked)
    end

    def self.locate(gid)
      puts ['Game::Project#locate', gid].inspect
      bs = BoardContent.locate(gid)
      return unless bs
      g = Game::Table.new(bs.game_session)
      Game::Project.new(g.board[bs.tile_id])
    end
  end
end
