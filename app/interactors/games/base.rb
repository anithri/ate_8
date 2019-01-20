module Games
  class Base
    include Interactor

    Bits  = Game::Bits
    RULES = Game::Bits::Rules

    delegate :board, :board_contents, :game, :game_session, :name, :players, :users, to: :context

    def board
      context.game.board
    end
  end
end
