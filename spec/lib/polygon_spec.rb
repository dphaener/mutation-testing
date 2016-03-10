require './lib/polygon'

describe Polygon do
  subject(:polygon) { Polygon.new }
  let(:side)        { Side.new(1) }

  describe "#add_side" do
    it 'should return a polygon' do
      expect(polygon.add_side(side)).to be(polygon)
    end

    it 'should add a side to polygon' do
      polygon.add_side(side)
      expect(polygon.sides).to include(side)
    end
  end
end
