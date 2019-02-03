module Game
  module Rules
    module HowToPlay
      extend ActiveSupport::Concern

      # rubocop:disable Metrics/BlockLength
      included do
        include AASM

        aasm do
          state :filled_box, initial: true
          state :ready_to_start
          state :start_of_game
          state :start_of_round
          state :player_turn
          state :end_of_round
          state :end_of_game
          state :empty_box

          event :setup_table do
            transitions from: :filled_box, to: :ready_to_start
          end

          event :starting_game do
            transitions from: :ready_to_start, to: :start_of_game
          end

          event :next_round do
            transitions from: :end_of_round, to: :end_of_game, guard: :final_round?
            transitions from: [:start_of_game, :end_of_round], to: :start_of_round
          end

          event :next_player do
            transitions from: :player_turn, to: :end_of_round, guard: :final_player?
            transitions from: [:start_of_round, :player_turn], to: :player_turn
          end

          event :put_away do
            transitions from: [:end_of_game], to: :empty_box
          end
        end

      end

      def state_path
        "/games/#{self.gid}" + case self.aasm.current_state
          when :ready_to_start
            '/'
          when :start_of_game
            '/starting'
          when :start_of_round
            "/round/#{self.round}/starting"
          when :player_turn
            "/round/#{self.round}/#{self.current_player}"
          when :end_of_round
            "/round/#{self.round}/ending"
          when :end_of_game
            '/ending'
          when :empty_box
            '/final'
          else
            '/'
        end
      end
    end
    # rubocop:enable Metrics/BlockLength
  end
end

