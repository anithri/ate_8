module Steps
  class Base
    include Interactor

    BITS  = Game::Bits
    RULES = Game::Rules::Glossary

    delegate :board, :board_contents, :game, :game_session, :name, :players, :users, to: :context

    def board
      context.game.board
    end
  end
end
