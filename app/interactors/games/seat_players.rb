module Games
  class SeatPlayers
    include Interactor

    before do
      puts self.class if context.debug
      unless context.new_player_ids
        context.errors = ["no players"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      context.player_data = users.shuffle.each_with_index.map do |u, i|
        PlayerDatum.new({user_id: u.id, order: i + 1})
      end
    end

    def users
      context.users ||= User.locate_many context.new_player_ids
    end

  end
end
