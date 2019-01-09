module Games
  class SeatPlayers < Base

    before do
      # puts '=' * 30
      # puts self.class if context.debug
      unless users
        context.errors = ["no "]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      context.players = users.shuffle.each_with_index.map do |u, i|
        Player.new({user: u, order: i + 1})
      end
    end

  end
end
