class Games::DrawWorkers
  include Interactor

  before do
    puts self.class if context.debug
    unless context.game_data
      context.errors = ["no game_data"]
      context.fail!(message: context.errors.first)
    end

    context.game_data.board_data.each do |board_datum|
      board_datum.bag = Board::Bag.default
    end
  end

  def call
    Game::STARTING_WORKER_LOCATIONS.each_pair do |loc, count|
      pool = Game::Worker.all.map{|w| Array.new(count, w)}.flatten.shuffle
      context.game.board[loc].bag.push(pool)
    end
  end

end
