class North < Direction
  def move(rover)
    rover.y += 1
  end

  def turn_left
    West.new
  end

  def turn_right
    East.new
  end

  def to_s
    "North"
  end
end
