class Games::DrawWorkers
  include Interactor

  before do
    puts self.class if context.debug
    if !context.game_data
      context.errors = ["no game_data"]
      context.fail!(message: context.errors.first)
    end

    context.game_data.board_data.each do |loc|
      loc.worker_ids = []
    end
  end
  def call
    # TODO
  end
end
