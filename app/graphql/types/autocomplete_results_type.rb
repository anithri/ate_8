module Types
  class AutocompleteResultsType < Types::BaseObject
    field :hint, Types::HintType, null: true
    field :all_projects, Types::AllProjects.connection_type, null: true
    field :total_count, Integer, null: true
  end
end
