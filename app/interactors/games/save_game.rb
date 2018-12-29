module Games
  class SaveGame
    include Interactor

    before do
      puts self.class if context.debug
      unless context.game_data
        context.errors = ["no game_data"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      if context.game_data.save
        context.errors = []
      else
        context.errors = context.game_data.errors.full_messages
        context.fail!
      end
    rescue ArgumentError => e
      warn context.game_data.inspect
      warn e.backtrace.inspect
    end
  end
end
