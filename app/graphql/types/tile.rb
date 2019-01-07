# frozen_string_literal: true
module Types
  class Tile < Types::BaseObject
    description 'Tile'

    field :id, ID, null: false
    field :name, String, null: false
  end
end
