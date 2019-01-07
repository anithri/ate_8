module Games
  class SaveGame < Base

    before do
      puts self.class if context.debug
      unless game_session
        context.errors = ["no game_session"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      if game_session.save
        context.errors = []
      else
        context.errors = game_session.errors.full_messages
        context.fail!
      end
    rescue ArgumentError => e
      warn game_session.inspect
      warn e.backtrace.inspect
    end
  end
end
