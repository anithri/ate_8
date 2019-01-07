class BagType < ActiveRecord::Type::Value
  def cast(bag_contents)
    if bag_contents.instance_of? ::Game::Bag
      bag_contents
    elsif bag_contents.is_a? Hash
      ::Game::Bag.new(bag_contents)
    elsif bag_contents.respond_to? :to_s
      ::Game::Bag.new(JSON.parse(bag_contents))
    else
      ::Game::Bag.default
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

