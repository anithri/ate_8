module Mutations
  class SetupTable < BaseMutation
    field :game, Types::Game, null: true

    def resolve
      r = Events::SetupTable.call
      if r.failure?
        {game: nil, errors: r.error ? [r.error] : []}
      else
        {errors: r.errors, game: r.game}
      end
    end
  end
end
