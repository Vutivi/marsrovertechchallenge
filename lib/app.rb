require_relative './plateau'
require_relative './rover'
require_relative './handler'
require_relative './east'
require_relative './north'
require_relative './south'
require_relative './west'

upper_right = ARGF.gets.split.map(&:to_i)
plateau = Plateau.new(upper_right[0], upper_right[1])

# Read rover information and commands until the end of input
until ARGF.eof
  position = ARGF.gets.split
  direction_command = position[2]
  rover = Rover.new(position[0].to_i, position[1].to_i, direction_command, plateau)

  commands = ARGF.gets.chomp
  Handler.new(rover).handle(commands)
  puts rover
  rover.visualize
  puts "\n"
end
