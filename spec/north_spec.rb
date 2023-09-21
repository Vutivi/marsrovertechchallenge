require_relative '../lib/east'
require_relative '../lib/west'
require_relative '../lib/north'
require_relative '../lib/rover'

describe North do
  let(:rover) { Rover.new(0, 0, North.new) }
  
  it "moves the rover north correctly" do
    rover.direction.move(rover)
    expect(rover.y).to eq(1)
  end

  it "turns left correctly" do
    north_direction = North.new
    new_direction = north_direction.turn_left
    expect(new_direction).to be_instance_of(West)
  end

  it "turns right correctly" do
    north_direction = North.new
    new_direction = north_direction.turn_right
    expect(new_direction).to be_instance_of(East)
  end

  it "returns the correct string representation" do
    north_direction = North.new
    expect(north_direction.to_s).to eq("North")
  end
end
