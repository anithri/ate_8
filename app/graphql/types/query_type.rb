# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject


    #region Game Fields
    field :game, Types::Game, null: true do
      argument :game_id, ID, required: true, as: :id
    end
    alias_method :game, :locate

    field :games, Types::Game.connection_type, null: false
    def games
      ::Game.all
    end
    #endregion

    #region PlayerQueue Fields
    field :player_queue, Types::User.connection_type, null: false
    def player_queue
      ::PlayerQueue.current
    end
    #endregion

    # last of fields
  end
end
