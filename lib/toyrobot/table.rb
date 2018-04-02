module Toyrobot
  class Table
    
    def initialize(x = 5, y = 5)
      @x = x
      @y = y
    end
    
    def is_valid_position?(x,y)
      x >= 0 && x <= @x &&
      y >= 0 && y <= @y     
    end
  
  end
end