# frozen_string_literal: true

module Types
  class AllProjects < Types::BaseUnion
    possible_types Types::InternalProject, Types::ClientProject
  end
end
