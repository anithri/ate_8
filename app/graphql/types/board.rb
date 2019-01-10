module Types
  class Board < Types::BaseObject
    global_id_field :id
    field :orientation, String, null: false
    field :game, Types::Game, null: false

    field :all, Types::BoardSpace.connection_type, null: false
    field :cards, Types::BoardSpace.connection_type, null: false
    field :common, Types::BoardSpace.connection_type, null: false
    field :players, Types::BoardSpace.connection_type, null: false
    field :projects, Types::BoardSpace.connection_type, null: false
    field :workers, Types::BoardSpace.connection_type, null: false

    field :active_workers, Types::BagConnection, null: false
    field :dead_workers, Types::BagConnection, null: false
    field :pending_workers, Types::BagConnection, null: false

    ::Game::Bits::Tile.all.map do |loc|
      field loc.id.to_sym, Types::BoardSpace, null: false
    end
  end
end
