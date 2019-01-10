# frozen_string_literal: true
module Types
  class BoardSpace < Types::BaseObject
    description 'Board Space'

    global_id_field :id
    field :name, String, null: false
    field :slug, String, null: false

    field :cards, Types::Card.connection_type, null: true
    field :card_count, Int, null: true
    def card_count
      puts '=' * 30
      puts cards.inspect
      cards.length
    end
    field :workers, Types::Worker.connection_type, null: true
    field :workerSummary, Types::Worker.connection_type, null: true
  end
end
