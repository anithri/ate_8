module Games
  class StartGame
    include Interactor::Organizer

    organize Games::SeatPlayers,
             Games::SetupBoard,
             Games::DealCards
  end
end
