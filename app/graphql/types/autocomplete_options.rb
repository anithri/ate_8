module Types
  class AutocompleteOptions < Types::BaseInputObject
    argument :term, String, required: true
  end
end
