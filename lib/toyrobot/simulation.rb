module Toyrobot
  class Simulation
    def initialize(table)
      @table = table
    end

    def place(x_position, y_position, direction)
      return unless @table.valid_position?(x_position, y_position)
      return unless valid_direction?(direction)
      @robot = Robot.new(x_position, y_position, direction)
    end

    def report
      return unless robot_on_the_table?
      puts @robot.report
    end

    def move
      return unless robot_on_the_table?
      return unless @table.valid_position?(*@robot.next_move)
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

    def invalid_command; end

    private

    def valid_direction?(direction)
      ['NORTH', 'EAST', 'SOUTH', 'WEST'].include?(direction)
    end
  end
end
