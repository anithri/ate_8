# frozen_string_literal: true
module Types
  class Game < Types::BaseObject
    description 'Game'

    global_id_field :id
    field :board, Types::Board, null: false
    field :current_player, Types::Player, null: false
    field :name, String, null: false
    field :players, Types::Player.connection_type, null: false
    field :round, Integer, null: false
    field :turn, Integer, null: false
    field :current_state, String, null: false
  end
end
