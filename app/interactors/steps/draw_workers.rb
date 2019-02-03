module Steps
  class DrawWorkers < Base

    before do
      # puts '=' * 30
      # puts self.class if context.debug
      unless board
        context.errors = ["no board"]
        context.fail!(message: context.errors.first)
      end
    end

    def call
      RULES::STARTING_WORKER_SPACES.each do |tile_id, count|
        pool = BITS::Worker.all.reduce([]) do |arr, w|
          arr.push(*Array.new(count, w))
        end.shuffle
        board[tile_id.to_s].bag.push(pool)
      end

      BITS::Tile.projects.each do |tile|
        project = Game::Project.new(board[tile.id])
        project.assign_workers_for_project!
      end
    end
  end
end
