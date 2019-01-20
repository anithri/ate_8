module Game
  class Runner
    include Workflow
    attr_accessor :game, :session

    def initialize(game)
      @game = game
      @session = game.game_session
    end

    def load_workflow_state
      session.workflow_state
    end

    def persist_workflow_state(new_value)
      session.workflow_state = new_value
      session.save
    end

    workflow do
      state :new do
        event :start, transitions_to: :player_start
        event :stop, transition_to: :end_game
      end

      state :player_start

      state :end_game
    end

  end
end
