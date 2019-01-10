module Game
  class WorkerSummary

    attr_reader :worker, :total

    def initialize(worker, total)
      @worker = worker
      @total  = total
    end

    delegate :name, :slug, to: :worker

    def gid
      "#{worker.gid}-#{total}"
    end

    def self.for(workers)
      if workers.empty?
        Game::Bits::Worker.all.to_a.map { |worker| WorkerSummary.new(worker, 0) }
      else
        workers
          .group_by(&:itself)
          .transform_values(&:length)
          .map { |worker, total| WorkerSummary.new(worker, total) }
      end
    end
  end
end
