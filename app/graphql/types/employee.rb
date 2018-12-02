# frozen_string_literal: true
module Types
  class Employee < Types::BaseObject
    description 'Employee'

    field :id, ID, null: false
    field :username, String, null: false
    field :name, String, null: true, method: :display_name
    field :is_gone, Boolean, null: true
    # field :is_itar_restricted, Boolean, null: true, as: :itar_restricted
  end
end
