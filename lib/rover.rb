class Rover
  attr_accessor :x, :y, :direction, :plateau

  def initialize(x, y, direction, plateau)
    @x = x
    @y = y
    @direction = direction_conversion(direction)
    @plateau   = plateau
  end

  def move
    return if out_of_bounds?
    
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

  def visualize
    (0..@plateau.height).each do |y_point|
      (0..@plateau.width).each do |x_point|
        if x_point == @x && y_point == @y
          print "R "
        else
          print ". "
        end
      end
      puts
    end
  end

  private

  def direction_conversion(direction)
    case direction
    when 'N'
      North.new
    when 'E'
      East.new
    when 'W'
      West.new
    when 'S'
      South.new
    end
  end

  def out_of_bounds?
    if (@x > @plateau.width) || (@y > @plateau.height) || (@x < 0) || \
      (@y < 0)
      return true
    end
  end
end
