module Types
  class Board < Types::BaseObject
    global_id_field :id
    field :all, Types::BoardLocation.connection_type, null: false

    field :card, Types::BoardLocation.connection_type, null: false

    field :worker, Types::BoardLocation.connection_type, null: false

    field :player, Types::BoardLocation.connection_type, null: false

    field :project, Types::BoardLocation.connection_type, null: false

  end
end
