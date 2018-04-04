module Toyrobot
  class Table
    def initialize(x_position = 5, y_position = 5)
      @x_position = x_position
      @y_position = y_position
    end

    def valid_position?(x_position, y_position)
      (0...@x_position).cover?(x_position) &&
        (0...@y_position).cover?(y_position)
    end
  end
end
