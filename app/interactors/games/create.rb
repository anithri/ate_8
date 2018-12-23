module Games
  class Create
    include Interactor::Organizer

    organize QuickStart,
             SeatPlayers,
             SetupBoard,
             SetupGame,
             DealCards,
             DrawWorkers,
             SaveGame
  end
end
