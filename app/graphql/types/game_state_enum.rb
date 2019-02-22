module Types
  class GameStateEnum < Types::BaseEnum
    GameSession.aasm.states.each do |state|
      value state.name, state.name.to_s.titlecase
    end
  end
end
