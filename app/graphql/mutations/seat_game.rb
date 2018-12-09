module Mutations
  class SeatGame < BaseMutation
    field :game, Types::Game, null: true

    argument :new_player_ids, [String], required: true

    def resolve(new_player_ids:)
      r = ::SeatGame.call new_player_ids: new_player_ids
      if r.failure?
        {errors: r.errors}
      else
        r
      end
    end
  end
end
