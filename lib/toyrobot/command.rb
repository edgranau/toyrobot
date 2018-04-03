module Toyrobot
  class Command

    def parse(line)
      case line
      when /REPORT/ then [:report]
      when /MOVE/ then [:move]
      when /LEFT/ then [:left]
      when /RIGHT/ then [:right]
      when /PLACE ([0-9]+),([0-9]+),(NORTH|EAST|SOUTH|WEST)/ then [:place, $1.to_i, $2.to_i, $3]
      else [:invalid_command]
      end
    end

  end
end