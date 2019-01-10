# frozen_string_literal: true
module Types
  class Player < Types::BaseObject
    description 'player'

    global_id_field :id
    field :name, String, null: true
    field :order, Integer, null: false
    field :slug, String, null: false
    field :required_workers, Types::BagConnection, null: false
  end
end
