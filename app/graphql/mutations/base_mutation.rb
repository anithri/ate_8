module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    field :errors, [String], null: false

  end
end
