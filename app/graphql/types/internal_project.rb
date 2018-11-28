# frozen_string_literal: true

class Types::InternalProject < Types::BaseObject
  description 'Internal Project'

  field :id, ID, null: false
  field :name, String, null: false, method: :display_name
  field :category, String, null: false

end
