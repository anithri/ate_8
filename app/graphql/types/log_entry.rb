# frozen_string_literal: true
module Types
  class LogEntry < Types::BaseObject
    description 'Log Entry'

    field :id, ID, null: false
    field :name, String, null: true
  end
end
