class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3].sort
  end


  def kind
    a, b, c = @sides
    if a <= 0 || a + b <= c
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
    return :equilateral if a == c
    return :isosceles if a == b || b == c
    return :scalene
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "Triangle with no size or with negative side or violating triangle inequality"
    end
  end
end
