module Game
  def self.locate(game_session_id)
    Table.new(
      GameSession.locate(game_session_id)
    )
  end

  def self.find(game_id)
    Table.new(
      GameSession.find(game_id)
    )
  end

  def self.current
    GameSession.active.map { |g| Table.new(g) }
  end
end
