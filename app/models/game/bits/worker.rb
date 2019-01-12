# frozen_string_literal: true
module Game
  module Bits
    class SatisfiedWorker
      delegate_missing_to :@worker
      def initialize(worker)
        @worker = worker
        self
      end
      def is_met
        'met'
      end
    end
    class Worker < ApplicationActiveHash
      include ActiveHashGlobalId

      field :total, default: 0
      field :name

      create id:   'workerRed',
             name: 'Red'

      create id:   'workerBlue',
             name: 'Blue'

      create id:   'workerGreen',
             name: 'Green'

      create id:   'workerPurple',
             name: 'Purple'

      def to_s
        self.gid
      end

      def slug
        id
      end

      def is_met
        'unmet'
      end

      def satisfy!
        Bits::SatisfiedWorker.new(self)
      end

      def self.combinations
        self.all.shuffle.combination(3).to_a.shuffle
      end
    end
  end
end
