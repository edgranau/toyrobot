module Toyrobot
  class Robot
    
    STEP = {
      "NORTH" => [0,1],
      "EAST"  => [1,0],
      "SOUTH" => [0,-1],
      "WEST"  => [-1,0]
    }

    LEFT = {
      "NORTH" => "WEST",
      "EAST"  => "NORTH",
      "SOUTH" => "EAST",
      "WEST"  => "SOUTH"
    }

    RIGHT = {
      "NORTH" => "EAST",
      "EAST"  => "SOUTH",
      "SOUTH" => "WEST",
      "WEST"  => "NORTH"
    }

    def initialize(x, y, direction)
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
      @direction = LEFT["#{@direction}"]
    end

    def right
      @direction = RIGHT["#{@direction}"]
    end
  end
end