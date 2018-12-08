# frozen_string_literal: true
module Types
  class User < Types::BaseObject
    description 'User'

    global_id_field :id
    field :name, String, null: true
    field :email, String, null: false
  end
end
