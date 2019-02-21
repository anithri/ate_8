# frozen_string_literal: true
module Types
  class Message < Types::BaseObject
    description 'Message'

    global_id_field :id
    field :body, String, null: false
    field :icon, String, null: false
    field :theme, String, null: false

  end
end
