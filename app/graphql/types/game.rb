# frozen_string_literal: true
module Types
  class Game < Types::BaseObject
    description 'Game'

    global_id_field :id
    field :name, String, null: false
    field :turn, Integer, null: false
    field :phase, Integer, null: false
  end
end
