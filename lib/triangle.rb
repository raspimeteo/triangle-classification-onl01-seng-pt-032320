require 'pry'
class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if (a <= 0 || b <= 0 || c <= 0)
      raise TriangleError
    end
      if (a == b && b == c )
        :equilateral
      elsif ((a == b && b != c) || (a != b && b == c) || (a == c && a != b))
        :isosceles
      elsif (a != b && b != c && c != a)
        :scalene
      end
    
  end 
end

    

class TriangleError < StandardError
 
end