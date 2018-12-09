# frozen_string_literal: true
module Types
  class Location < Types::BaseObject
    description 'Location'

    field :id, ID, null: false
    field :name, String, null: false
  end
end
