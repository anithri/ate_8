module Game
  def self.locate(game_session_id)
    Runner.new(
      GameSession.locate(game_session_id)
    )
  end

  def self.find(game_id)
    Runner.new(
      GameSession.find(game_id)
    )
  end

  def self.current
    GameSession.active.map { |g| Runner.new(g) }
  end
end
