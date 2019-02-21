module Mutations
  class StartGame < BaseMutation
    field :game, Types::Game, null: true

    argument :game_id, ID, required: true, as: :id

    def resolve(id:)
      game = Game.locate(id)
      return unless game
      r = Events::StartGame.call game: game
      if r.failure?
        {game: nil, errors: r.error ? [r.error] : []}
      else
        {errors: r.errors, game: r.game}
      end
    end
  end
end
