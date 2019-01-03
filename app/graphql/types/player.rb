# frozen_string_literal: true
module Types
  class Player < Types::BaseObject
    description 'Player'

    global_id_field :id
    field :name, String, null: true
    field :order, Integer, null: false
    field :slug, String, null: false
    field :workers, Types::Worker.connection_type, null: false
  end
end
