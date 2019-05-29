class Triangle
  attr_reader :side_one, :side_two, :side_three

  def initalize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
      if side_one == side_two && side_two == side_three
        :equilateral
      elsif side_one == side_two || side_two == side_three || side_one == side_three
        :isosceles
      else
        :scalene
      end
  end

  def zero?
    arr = [side_one, side_two, side_three]
  end

  # def legal_triangle
    # triangle = [ (side_one + side_two > side_three),
    #               (side_two + side_three > side_one),
    #               (side_one + side_three > side_two) ]


end

class TriangleError < StandardError
end
