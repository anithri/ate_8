class PlayerQueue
  def self.current
    User.all
  end

  def self.players(seats = 4)
    self.current.sample(seats)
  end
end
