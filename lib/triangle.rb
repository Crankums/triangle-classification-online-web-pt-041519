class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def legal_triangle?
    if (@side_one <= 0) || (@side_two <= 0) || (@side_three <= 0)
      raise TriangleError
    elsif (@side_one + @side_two <= @side_three) || (@side_two + @side_three <= @side_one) || (@side_one + @side_three <= @side_two)
      raise TriangleError
    end
  end

  def kind
    if legal_triangle?
    else
      if side_one == side_two && side_two == side_three
        :equilateral
      elsif side_one == side_two || side_two == side_three || side_one == side_three
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end
