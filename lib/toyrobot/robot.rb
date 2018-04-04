module Toyrobot
  class Robot
    STEP = {
      'NORTH' => [0, 1],
      'EAST'  => [1, 0],
      'SOUTH' => [0, -1],
      'WEST'  => [-1, 0]
    }.freeze

    LEFT = {
      'NORTH' => 'WEST',
      'EAST'  => 'NORTH',
      'SOUTH' => 'EAST',
      'WEST'  => 'SOUTH'
    }.freeze

    RIGHT = {
      'NORTH' => 'EAST',
      'EAST'  => 'SOUTH',
      'SOUTH' => 'WEST',
      'WEST'  => 'NORTH'
    }.freeze

    def initialize(x_position, y_position, direction)
      @x_position = x_position
      @y_position = y_position
      @direction = direction
    end

    def report
      "#{@x_position},#{@y_position},#{@direction}"
    end

    def move
      @x_position, @y_position = next_move
    end

    def next_move
      [[@x_position, @y_position], STEP[@direction.to_s]]
        .transpose
        .map { |x| x.reduce(:+) }
    end

    def left
      @direction = LEFT[@direction.to_s]
    end

    def right
      @direction = RIGHT[@direction.to_s]
    end
  end
end
