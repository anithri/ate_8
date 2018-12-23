class Games::QuickStart
  include Interactor

  before do
    puts self.class if context.debug
  end
  def call
    if Rails.env.development?
      context.new_player_ids ||= PlayerQueue.current.map(&:gid).sample(Game::PLAYER_COUNT)
      context.name           ||= Faker::Book.title
    end
  end
end
