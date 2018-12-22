module Board
  class Bag
    attr_accessor :location

    def initialize(location)
      @location    = location
      @worker_gids = location.worker_ids
    end

    def count(worker_id: nil)
      return @worker_gids.length unless worker_id
      @worker_gids.select { |id| as_gid(id) == as_gid(worker_id) }
    end

    def workers
      Game::Worker.locate_many @worker_gids
    end

    def summary

    end

    def push(*new_workers)
      @worker_gids.push(*as_gids(new_workers))
    end

    def pop(count)
      @worker_gids.pop(count)
    end

    def remove(*workers_to_drop)
      removing     = as_gids(workers_to_drop)
      keeping      = @worker_gids - (@worker_gids & removing)
      @worker_gids = keeping
      removing
    end

    def as_gids(objs)
      objs.flatten.map { |w| self.as_gid(w) }
    end

    def as_gid(w)
      w.is_a?(Game::Worker) ? w.gid : w
    end

  end
end
