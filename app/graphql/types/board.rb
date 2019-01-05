module Types
  class Board < Types::BaseObject
    global_id_field :id
    field :orientation, String, null: false

    field :all, Types::BoardLocation.connection_type, null: false
    field :cards, Types::BoardLocation.connection_type, null: false
    field :common, Types::BoardLocation.connection_type, null: false
    field :players, Types::BoardLocation.connection_type, null: false
    field :projects, Types::BoardLocation.connection_type, null: false
    field :workers, Types::BoardLocation.connection_type, null: false

    field :active_workers, Types::Worker.connection_type, null: false
    field :dead_workers, Types::Worker.connection_type, null: false
    field :pending_workers, Types::Worker.connection_type, null: false

    ::Board::Location.all.map do |loc|
      field loc.id.to_sym, Types::BoardLocation, null: false
    end
  end
end
