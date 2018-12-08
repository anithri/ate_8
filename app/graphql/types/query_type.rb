# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    #region User Fields
    field :user, Types::User, null: true do
      argument :user_id, ID, required: true, as: :id
    end
    alias_method :user, :locate

    field :users, Types::User.connection_type, null: false
    def users
      ::User.all
    end
    #endregion

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

    # last of fields
  end
end
