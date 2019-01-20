module Mutations
  class StartGame < BaseMutation
    field :game, Types::Game, null: true

    argument :game_id, ID, required: true

    def resolve(game_id:)
      r = Actions::StartGame.call game_id: game_id
      if r.failure?
        {game: nil, errors: r.error ? [r.error] : []}
      else
        {errors: r.errors, game: r.game}
      end
    end
  end
end
