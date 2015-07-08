module Equilateral
	def initialize(side)
		@side = side
	end
	def perimeter
		@side*4
	end
end

class Quadrilateral
	attr_accessor :sides
	@sides = 4

	def initialize(side1, side2, side3, side4)
		@side1 = side1
		@side2 = side2
		@side3 = side3
		@side4 = side4
	end

	def perimeter
		@side1+@side2+@side3+@side4
	end
end

class Rectangle < Quadrilateral 
	attr_reader :length, :width

	def initialize(length, width)
		@length = length
		@width = width
	end

	def perimeter
		2 * (@length + @width)
	end

	def area
		@length * @width
	end
end

class Square < Rectangle
	include Equilateral
	attr_reader :side
		def area
		@side**2
	end
end

class Trapezoid < Quadrilateral
end

class Rhombus < Trapezoid
	include Equilateral
	attr_reader :side
end


def test
  puts "Quadrilateral"
  quad = Quadrilateral.new(1,2,3,4)
  puts quad.perimeter == 10

  puts "Rectangle"
  rect = Rectangle.new(2,3)
  puts rect.perimeter == 10
  puts rect.area == 6

  puts "Square"
  squa = Square.new(2)
  puts squa.perimeter == 8
  puts squa.area == 4
  puts squa.side == 2

  puts "Trapezoid"
  trap = Trapezoid.new(2,3,4,5)
  puts trap.perimeter == 14

  puts "Rhombus"
  rhom = Rhombus.new(3)
  puts rhom.perimeter == 12
  puts rhom.side == 3
end

test
