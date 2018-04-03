module Toyrobot
  class Table
    
    def initialize(x = 5, y = 5)
      @x = x
      @y = y
    end
    
    def is_valid_position?(x,y)
      (0...@x).cover?(x) &&
      (0...@y).cover?(y)
    end
  
  end
end