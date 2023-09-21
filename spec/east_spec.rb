require_relative '../lib/east'
require_relative '../lib/north'
require_relative '../lib/south'
require_relative '../lib/rover'

describe East do
  let(:rover) { Rover.new(0, 0, East.new) }
  
  it "moves the rover east correctly" do
    rover.direction.move(rover)
    expect(rover.x).to eq(1)
  end

  it "turns left correctly" do
    east_direction = East.new
    new_direction = east_direction.turn_left
    expect(new_direction).to be_instance_of(North)
  end

  it "turns right correctly" do
    east_direction = East.new
    new_direction = east_direction.turn_right
    expect(new_direction).to be_instance_of(South)
  end

  it "returns the correct string representation" do
    east_direction = East.new
    expect(east_direction.to_s).to eq("East")
  end
end