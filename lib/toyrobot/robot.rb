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

    def move
      case @direction
      when "NORTH" then @y += 1
      when "SOUTH" then @y -= 1
      when "EAST" then @x += 1
      when "WEST" then @x -= 1
      end
    end
  
    def left
      case @direction
      when "NORTH" then @direction = "WEST"
      when "WEST" then @direction = "SOUTH"
      when "SOUTH" then @direction = "EAST"
      when "EAST" then @direction = "NORTH"
      end
    end

    def right
      case @direction
      when "NORTH" then @direction = "EAST"
      when "WEST" then @direction = "NORTH"
      when "SOUTH" then @direction = "WEST"
      when "EAST" then @direction = "SOUTH"
      end
    end
  end
end