require_relative '../lib/west'
require_relative '../lib/north'
require_relative '../lib/south'
require_relative '../lib/rover'

describe West do
  let(:rover) { Rover.new(2, 0, 'W', nil) }
  
  it "moves the rover west correctly" do
    rover.direction.move(rover)
    expect(rover.x).to eq(1)
  end


  it "turns left correctly" do
    west_direction = West.new
    new_direction = west_direction.turn_left
    expect(new_direction).to be_instance_of(South)
  end

  it "turns right correctly" do
    west_direction = West.new
    new_direction = west_direction.turn_right
    expect(new_direction).to be_instance_of(North)
  end

  it "returns the correct string representation" do
    west_direction = West.new
    expect(west_direction.to_s).to eq("West")
  end
end