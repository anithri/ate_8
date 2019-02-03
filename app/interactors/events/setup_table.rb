module Events
  class SetupTable
    include Interactor::Organizer

    organize Steps::QuickStart,
             Steps::SeatPlayers,
             Steps::SetupBoard,
             Steps::SetupGame,
             Steps::DealCards,
             Steps::DrawWorkers,
             Steps::SaveGame
  end
end
