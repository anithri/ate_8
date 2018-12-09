class Board

  attr_accessor :board_locations, :groups

  def initialize(board_locations)
    @groups = Hash.new{|h,k| h[k] = []; h}

    @board_locations = board_locations.reduce({}) do |hsh, b_loc|
      hsh[b_loc.id] = b_loc
      @groups[b_loc.group] << b_loc
      hsh
    end
  end


  def method_missing(m, *opts)
    if @board_locations.has_key?(m.to_s)
      return @board_locations[m.to_s]
    elsif @groups.has_key?(m.to_s)
      return @groups[m.to_s]
    end

    nil
  end
end
