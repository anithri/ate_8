module Game
  class Bag
    include ActiveModel::Dirty

    DEFAULT_BAG = {
      worker_ids: [].freeze,
      version:    '1.0.0'.freeze
    }.with_indifferent_access.freeze

    attr_accessor :worker_ids, :version
    define_attribute_methods :worker_ids, :version

    def initialize(bag_contents)
      @bag_contents   = bag_contents.with_indifferent_access
      @version    = @bag_contents[:version]
      @worker_ids = @bag_contents[:worker_ids] || []
    end

    def workers
      Bits::Worker.locate_many worker_ids
    end

    def push(*new_workers)
      worker_ids_will_change! unless new_workers.flatten.empty?
      worker_ids.push(*new_workers.flatten.map(&:to_s))
    end

    def pop(count = 1)
      worker_ids_will_change! unless count == 0 || worker_ids.length == 0
      worker_ids.pop(count)
    end

    def required!(arr)
      return arr if worker_ids == arr
      worker_ids_will_change!
      worker_ids.clear
      worker_ids.push(*arr)
    end

    def to_json
      to_h.to_json
    end


    def to_h
      {
        worker_ids: worker_ids,
        version:    version
      }.with_indifferent_access
    end

    def self.default
      new(DEFAULT_BAG.deep_dup)
    end
  end
end
