module Game
  module Bits
    module Rules
      PER_WORKER_COUNT   = 30
      PLAYER_COUNT       = 4
      PROJECT_COUNT      = 16
      TOTAL_WORKER_COUNT = Worker.count * PER_WORKER_COUNT

      BOARD_ORIENTATIONS = %w{north east south west}.freeze

      STARTING_WORKER_SPACES = {
        bar:      2,
        discards: 3,
        draw:     5,
        reserve:  20
      }.freeze

    end
  end
end
