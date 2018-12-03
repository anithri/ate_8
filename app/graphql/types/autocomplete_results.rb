# frozen_string_literal: true

module Types
  class AutocompleteResults < Types::BaseObject
    field :hint, Types::Hint, null: true
    field :all_projects, Types::Project.connection_type, null: false
    field :total_count, Integer, null: true
  end
end
