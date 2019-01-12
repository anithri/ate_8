# frozen_string_literal: true
module Types
  class BoardSpace < Types::BaseObject
    description 'Board Space'

    global_id_field :id
    field :name, String, null: false
    field :slug, String, null: false

    field :cards, Types::DeckConnection, null: true
    field :workers, Types::BagConnection, null: true
  end
end
