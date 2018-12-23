module Types
  class Board < Types::BaseObject
    global_id_field :id
    field :all, Types::BoardLocation.connection_type, null: false

    field :cards, Types::BoardLocation.connection_type, null: false

    field :common, Types::BoardLocation.connection_type, null: false

    field :players, Types::BoardLocation.connection_type, null: false

    field :projects, Types::BoardLocation.connection_type, null: false

    field :workers, Types::BoardLocation.connection_type, null: false
  end
end
