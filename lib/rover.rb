class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move
    @direction.move(self)
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def to_s
    "Rover at (#{@x}, #{@y}) facing #{direction.to_s}"
  end
end
