module Game
  class Project
    attr_accessor :board_space

    def initialize(board_space)
      @board_space = board_space
    end

    delegate :bag, :deck, :id, :gid, :name, :tile, to: :board_space
    delegate :workers, to: :bag
    delegate :cards, to: :deck
    delegate :slug, to: :tile

    def project_card
      deck.cards[0]
    end

    def required_workers
      project_card.workers
    end

    def workers
      required_workers.zip(bag.workers).map do |need, have|
        need.satisfy!(need == have)
      end
    end

    def assign_workers_for_project!
      bag.required!(Array.new(required_workers.length))
    end

    def self.locate(gid)
      puts ['Game::Project#locate', gid].inspect
      bs = BoardContent.locate(gid)
      return unless bs
      g = Game::Runner.new(bs.game_session)
      Game::Project.new(g.board[bs.tile_id])
    end
  end
end
