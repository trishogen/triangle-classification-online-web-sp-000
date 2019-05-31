class Triangle

  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    if sides.detect {|side| side <= 0}
      raise TriangleError
    elsif scalene?
      :scalene
    elsif equilateral?
      :equilateral
    else
      :isosceles
    end
  end

  def scalene?
    sides[0] != sides[1] && sides[1] != sides[2] && sides[0] != sides[2]
  end

  def equilateral?
    sides[0] == sides[1] && sides[1] == sides[2]
  end

  class TriangleError < StandardError
    "Each side must be larger than 0."
  end

end
