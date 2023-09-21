require './lib/direction'

describe Direction do
  let(:direction) { described_class.new }

  it "raises NotImplementedError for 'turn_left' method" do
    expect { direction.turn_left }.to raise_error(NotImplementedError, "Subclasses must implement the 'turn_left' method")
  end

  it "raises NotImplementedError for 'turn_right' method" do
    expect { direction.turn_right }.to raise_error(NotImplementedError, "Subclasses must implement the 'turn_right' method")
  end

  it "raises NotImplementedError for 'move' method" do
    expect { direction.move(nil) }.to raise_error(NotImplementedError, "Subclasses must implement the 'move' method")
  end

  it "raises NotImplementedError for 'to_s' method" do
    expect { direction.to_s }.to raise_error(NotImplementedError, "Subclasses must implement the 'to_s' method")
  end
end