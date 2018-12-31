# frozen_string_literal: true
module Game
  class Worker < ApplicationActiveHash
    include ActiveHashGlobalId

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

    def self.combinations
      self.all.shuffle.combination(3).to_a.shuffle
    end
  end
end
