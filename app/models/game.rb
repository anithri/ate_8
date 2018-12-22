module Game
  PER_WORKER_COUNT = 30
  TOTAL_WORKER_COUNT = Worker.count * PER_WORKER_COUNT

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4


  def self.find(game_datum_id)
    Runner.new(GameDatum.find(game_datum_id))
  end
end
