module Toyrobot
  class Simulation
    attr_reader :table, :robot
    def initialize(table)
      @table = table
    end

    def place(x,y,direction)
      if(table.is_valid_position?(x,y) && is_valid_direction?(direction)) 
        @robot = Robot.new(x,y,direction) 
      end
    end

    def report
      return unless robot_on_the_table?
      @robot.report
    end

    def move
      return unless robot_on_the_table?
      return unless table.is_valid_position?(*@robot.next_move)
      @robot.move
    end

    def left
      return unless robot_on_the_table?
      @robot.left
    end

    def right
      return unless robot_on_the_table?
      @robot.right
    end

    def robot_on_the_table?
      !@robot.nil?
    end

    private

    def is_valid_direction?(direction)
      ["NORTH", "EAST", "SOUTH", "WEST"].include?(direction)
    end
  end
end
