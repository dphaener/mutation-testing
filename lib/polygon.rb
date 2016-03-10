class Side < Struct.new(:number, :length); end

class Polygon
  attr_reader :sides

  def initialize
    @pages = []
    @index = {}
    @sides = []
  end

  def side(number)
    @index.fetch(number) {
      raise "Polygon doesn't have a side with number: #{number}"
    }
  end

  def add_side(side)
    @sides << side
    @index[side.number] = side
    self
  end
end
