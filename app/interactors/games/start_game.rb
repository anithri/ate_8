module Games
  class StartGame
    include Interactor::Organizer

    organize SetupGame,
             SeatPlayers,
             SetupBoard,
             DealCards,
             DrawWorkers
  end
end
