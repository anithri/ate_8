module Mutations
  class SeatPlayers < BaseMutation
    field :game, Types::Game, null: true
    field :errors, [String], null: false
    argument :new_player_ids, [String], required: true

    def resolve(new_player_ids:)
      r = Games::FindPlayers.call new_player_ids: new_player_ids
      if r.failure?
        {game: nil, errors: r.error ? [r.error] : []}
      else
        {errors: r.errors, game: r.game}
      end
    end
  end
end
