class West < Direction
  def move(rover)
    rover.x -= 1
  end

  def turn_left
    South.new
  end

  def turn_right
    North.new
  end

  def to_s
    "West"
  end
end