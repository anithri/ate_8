module Steps
  class SeatPlayers < Base

    before do
      # puts '=' * 30
      # puts self.class if context.debug
      unless users
        context.errors = ["no users"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      context.players = Game::Bits::Worker.combinations.zip(users).each_with_index.map do |(combo,
        user), idx|
        p = Player.new({user: user, order: idx + 1})
        p.required_workers = combo
        p
      end
    end

  end
end
