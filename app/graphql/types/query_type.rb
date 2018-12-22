# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    #region Game Fields
    field :game, Types::Game, null: true do
      argument :game_id, ID, required: true, as: :id
    end
    def game(id:)
      ::GameDatum.locate(id)
    end

    field :games, Types::Game.connection_type, null: false
    def games
      ::GameDatum.active
    end
    #endregion

    #region PlayerQueue Fields
    field :player_queue, Types::User.connection_type, null: false
    def player_queue
      ::PlayerQueue.current
    end
    #endregion

    #region BoardLocation Fields
    field :board_location, Types::BoardLocation, null: true do
      argument :board_location_id, ID, required: true, as: :id
    end
    def board_location(id:)
      ::BoardLocation.locate id
    end

    field :board_locations, Types::BoardLocation.connection_type, null: false
    def board_locations
      ::BoardLocation.all
    end
    #endregion

    #region Location Fields
    field :location, Types::Location, null: true do
      argument :location_id, ID, required: true, as: :id
    end
    def location(id:)
      ::Location.find_by_id(id)
    end

    field :locations, Types::Location.connection_type, null: false
    def locations
      ::Location.all
    end
    #endregion

    #region Worker Fields
    field :worker, Types::Worker, null: true do
      argument :worker_id, ID, required: true, as: :id
    end
    def worker(id:)
      ::Worker.locate id
    end

    field :workers, Types::Worker.connection_type, null: false
    def workers
      ::Worker.all
    end
    #endregion

    #region Card Fields
    field :card, Types::Card, null: true do
      argument :card_id, ID, required: true, as: :id
    end
    def card(id:)
      ::Card.locate id
    end

    field :cards, Types::Card.connection_type, null: false
    def cards
      ::Card.all
    end
    #endregion

    # last of fields
  end
end
