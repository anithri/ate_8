module Games
  class CreateGame
    include Interactor::Organizer

    organize Games::SeatPlayers,
             Games::SetupBoard,
             Games::ShuffleDeal
  end
end
