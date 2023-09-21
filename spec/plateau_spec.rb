require './lib/plateau'

describe Plateau do
  let(:plateau) { Plateau.new(10, 20) }

  describe 'initialize' do
    it 'returns correct plateau length' do
      expect(plateau.height).to eq(10)
    end

    it 'returns correct plateau width' do
      expect(plateau.width).to eq(20)
    end
  end
end