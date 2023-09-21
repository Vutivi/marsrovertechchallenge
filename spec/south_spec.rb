require_relative '../lib/east'
require_relative '../lib/west'
require_relative '../lib/south'
require_relative '../lib/rover'

describe South do
  let(:rover) { Rover.new(0, 2, South.new) }
  
  it "moves the rover north correctly" do
    rover.direction.move(rover)
    expect(rover.y).to eq(1)
  end

  it "turns left correctly" do
    south_direction = South.new
    new_direction = south_direction.turn_left
    expect(new_direction).to be_instance_of(East)
  end

  it "turns right correctly" do
    south_direction = South.new
    new_direction = south_direction.turn_right
    expect(new_direction).to be_instance_of(West)
  end

  it "returns the correct string representation" do
    south_direction = South.new
    expect(south_direction.to_s).to eq("South")
  end
end