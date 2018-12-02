# frozen_string_literal: true

module Types
  class Hint < Types::BaseObject
    field :type, String, null: true
    field :content, String, null: true
  end
end
