class Triangle

  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    if sides.detect {|side| side <= 0}
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    "Each side must be larger than 0."
  end

end
