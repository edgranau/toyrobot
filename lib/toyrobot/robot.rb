module Toyrobot
  class Robot
    
    STEP = {
      "NORTH" => [0,1],
      "EAST"  => [1,0],
      "SOUTH" => [0,-1],
      "WEST"  => [-1,0]
    }
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
      @x, @y = next_move
    end

    def next_move
      [[@x,@y], STEP["#{@direction}"]].transpose.map {|x| x.reduce(:+)}
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
      when "EAST" then @direction = "SOUTH"
      when "SOUTH" then @direction = "WEST"
      when "WEST" then @direction = "NORTH"
      end
    end
  end
end