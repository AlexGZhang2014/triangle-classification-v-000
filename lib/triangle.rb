class Triangle
  attr_accessor :first_side, :second_side, :third_side
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end
  
  def triangle_inequality?
    if @first_side + @second_side <= @third_side
      true
    elsif @second_side + @third_side <= @first_side
      true
    elsif @first_side + @third_side <= @second_side
      true
    else
      FALSE
    end
  end
  
  def kind
    if @first_side <= 0 || @second_side <= 0 || @third_side <= 0
      raise TriangleError
    elsif 
    elsif @first_side == @second_side && @second_side == @third_side
      :equilateral
    elsif @first_side == @second_side && @second_side != @third_side
      :isosceles
    elsif @first_side != @second_side && @second_side == @third_side
      :isosceles
    elsif @first_side == @third_side && @first_side != @second_side
      :isosceles
    elsif @first_side != @second_side && @second_side != @third_side && @first_side != @third_side
      :scalene
    end
  end
  
  class TriangleError < StandardError
    "Your triangle is invalid. Please try again."
  end
end


