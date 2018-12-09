# frozen_string_literal: true
module Types
  class Card < Types::BaseObject
    description 'Card'

    field :id, ID, null: false
    field :name, String, null: true
    field :workers, Types::Worker.connection_type, null: false
  end
end
