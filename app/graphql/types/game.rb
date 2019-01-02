# frozen_string_literal: true
module Types
  class Game < Types::BaseObject
    description 'Game'

    global_id_field :id
    field :name, String, null: false
    field :turn, Integer, null: false
    field :phase, Integer, null: false
    field :players, Types::Player.connection_type, null: false
    field :board, Types::Board, null: false
    field :worker_types, [Types::Worker], null: false
  end
end
