module Steps
  class DealCards < Base
    before do
      # puts '=' * 30
      # puts self.class if context.debug
      unless board
        context.errors = ["no board"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      board.draw.deck.push(BITS::Card.shuffled)

      BITS::Tile.projects.each do |tile|
        board.deal(1, to: tile.id)
      end
    end
  end
end
