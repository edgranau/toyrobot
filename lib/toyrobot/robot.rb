module Toyrobot
  class Robot
    
    attr_reader :x, :y, :direction
    
    def initialize(x = -1, y = -1, direction = 'N/A')
      @x = x
      @y = y
      @direction = direction
    end
    
    def report
      "#{@x},#{@y},#{@direction}"
    end
  
  end
end