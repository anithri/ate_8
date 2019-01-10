module WorkerSummary
  def self.for(workers)
    if workers.empty?
      Game::Bits::Worker.all.to_a
    else
      workers
        .group_by(&:itself)
        .transform_values(&:length)
        .each{|worker, total| worker.total = total}
        .keys
    end
  end
end
