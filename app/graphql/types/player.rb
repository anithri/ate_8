# frozen_string_literal: true
module Types
  class Player < Types::BaseObject
    description 'Player'

    global_id_field :id
    field :tag, String, null: false
    field :slug, String, null: false
    field :order, Integer, null: false
    field :name, String, null: true
  end
end
