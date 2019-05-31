class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
  end

  class TriangleError < StandardError
    "Each side must be larger than 0."
  end

end
