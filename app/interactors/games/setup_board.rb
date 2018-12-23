module Games
  class SetupBoard
    include Interactor

    before do
      puts self.class if context.debug
    end

    def call
      context.board_data = ::Board::Location.all.map do |loc|
        BoardDatum.new(
          location:   loc,
          card_ids:   [],
          worker_ids: []
        )
      end
    end
  end
end
