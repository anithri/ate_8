module Games
  class QuickStart < Base

    before do
      puts self.class if context.debug
    end

    def call
      if Rails.env.development?
        context.users ||=
          PlayerQueue.players(RULES::PLAYER_COUNT)
        context.name           ||= Faker::Book.title
      end
    end
  end
end
