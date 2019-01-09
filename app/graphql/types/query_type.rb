# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    #region Game Fields
    field :game, Types::Game, null: true do
      argument :game_id, ID, required: true, as: :id
    end

    def game(id:)
      ::Game.locate(id)
    end

    field :games, Types::Game.connection_type, null: false

    def games
      ::Game.current
    end

    #endregion 1

    #region PlayerQueue Fields 11
    field :player_queue, Types::User.connection_type, null: false

    def player_queue
      ::PlayerQueue.current
    end

    #endregion

    #region Board Fields
    field :board, Types::Board, null: true do
      argument :board_id, ID, as: :id, required: false
    end

    def board(id:)
        ::Game::Board.locate id
    end

    #endregion

    #region Worker Fields
    field :worker, Types::Worker, null: true do
      argument :worker_id, ID, required: true, as: :id
    end

    def worker(id:)
      ::Game::Worker.locate id
    end

    field :workers, Types::Worker.connection_type, null: false

    def workers
      ::Game::Worker.all
    end

    #endregion

    #region Card Fields
    field :card, Types::Card, null: true do
      argument :card_id, ID, required: true, as: :id
    end

    def card(id:)
      ::Game::Card.locate id
    end

    field :cards, Types::Card.connection_type, null: false

    def cards
      ::Game::Card.all
    end
    #endregion

    #region player
    field :player, Types::Player, null: true do
      argument :player_id, ID, required: true, as: :id
    end
    def player(id:)
      ::Game::Seat.locate id
    end

    #endregion

    #region board_space
    field :board_space, Types::Tile, null: true do
      argument :board_space_id, ID, required: true, as: :id
    end
    def board_space(id:)
      ::Game::BoardSpace.locate id
    end
    #endregion
    # last of fields
  end
end
