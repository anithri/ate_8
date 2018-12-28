module Board
  class Bag
    attr_accessor :board_datum

    def initialize(board_datum)
      @board_datum = board_datum
    end

    def workers
      board_datum.workers
    end

    def push(*new_workers)
      board_datum.workers += new_workers.flatten
    end

  end
end
