require_relative '../lib/rover'
require_relative '../lib/north'
require_relative '../lib/east'
require_relative '../lib/west'
require_relative '../lib/south'

describe Rover do
  let(:plateau) { Plateau.new(2, 2) }
  let(:rover) { Rover.new(0, 0, 'N', plateau) }

  it "initializes with the correct position and direction" do
    expect(rover.x).to eq(0)
    expect(rover.y).to eq(0)
    expect(rover.direction).to be_instance_of(North)
  end

  it "moves the rover correctly" do
    rover.move
    expect(rover.y).to eq(1)
  end

  it "turns left correctly" do
    rover.turn_left
    expect(rover.direction).to be_instance_of(West)
  end

  it "turns right correctly" do
    rover.turn_right
    expect(rover.direction).to be_instance_of(East)
  end

  it "prints the correct rover information" do
    expect(rover.to_s).to eq("Rover at (0, 0) facing North")
  end
end
