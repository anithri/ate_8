module Mutations
  class CreateGame < BaseMutation
    field :game, Types::Game, null: true

    argument :new_player_ids, [String], required: true

    def resolve(new_player_ids:)
      r = Games::Create.call new_player_ids: new_player_ids
      if r.failure?
        {game: nil, errors: r.error ? [r.error] : []}
      else
        {errors: r.errors, game: r.game}
      end
    end
  end
end
