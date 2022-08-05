module Perimeter
  def perimeter
    sides.inject(0){|x, y| x + y }
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

module RubyMonk
  module Parser
    class TextParser
      def self.parse(text)
        text.upcase.split("")
      end
    end
  end
end