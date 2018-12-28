module Game
  PER_WORKER_COUNT   = 30
  PLAYER_COUNT       = 4
  PROJECT_COUNT      = 16
  TOTAL_WORKER_COUNT = Worker.count * PER_WORKER_COUNT

  STARTING_WORKER_LOCATIONS = {
    bar:     2,
    discards: 3,
    draw:    5,
    reserve: 20
  }

  def self.locate(game_datum_id)
    Runner.new(
      GameDatum.locate(game_datum_id)
    )
  end

  def self.find(game_id)
    Runner.new(
      GameDatum.find(game_id)
    )
  end

  def self.current
    GameDatum.active.map { |g| Runner.new(g) }
  end
end
