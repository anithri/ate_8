module Types
  class AllProjects < Types::BaseUnion
    possible_types [Types::InternalProject, Types::ClientProject]
  end
end
