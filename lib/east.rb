require './lib/direction'

class East < Direction
  def move(rover)
    rover.x += 1
  end

  def turn_left
    North.new
  end

  def turn_right
    South.new
  end

  def to_s
    "East"
  end
end