class BagType < ActiveRecord::Type::Value
  def cast(bag_data)
    if bag_data.instance_of? ::Board::Bag
      bag_data
    elsif bag_data.is_a? Hash
      ::Board::Bag.new(bag_data)
    elsif bag_data.respond_to? :to_s
      ::Board::Bag.new(JSON.parse(bag_data))
    else
      ::Board::Bag.default
    end
  end

  def serialize(bag)
    bag.to_json
  end

  def changed?(*args)
    puts "=" * 30
    puts args.inspect
    puts "=" * 30
    true
  end
end

