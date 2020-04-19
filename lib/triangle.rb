class Triangle
  
  attr_accessor :leg_a, :leg_b, :leg_c
  
  def initialize(leg_a, leg_b, leg_c)
    @leg_a = leg_a
    @leg_b = leg_b
    @leg_c = leg_c
  end
  
  def kind
    triangle?
    if (leg_a == leg_b && leg_b == leg_c )
        :equilateral
    elsif ((leg_a == leg_b && leg_b != leg_c) || (leg_a != leg_b && leg_b == leg_c) || (leg_a == leg_c && leg_a != leg_b))
      :isosceles
    else
      :scalene
    end
  end

  def triangle?
    triangle = [(leg_a + leg_b > leg_c), (leg_a + leg_c > leg_b), (leg_b + leg_c > leg_a)]
    raise TriangleError if triangle.include?(false)
  end

  class TriangleError < StandardError
  end
  
end