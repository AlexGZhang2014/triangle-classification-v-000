class Triangle
  attr_accessor :first_side, :second_side, :third_side
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end
  
  def kind
    if @first_side <= 0 || @second_side <= 0 || @third_side <= 0
      raise TriangleError
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
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    "Your triangle is invalid. Please try again."
  end
end


