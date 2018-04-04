module Toyrobot
  class Command
    def parse(line)
      case line
      when /REPORT/ then [:report]
      when /MOVE/ then [:move]
      when /LEFT/ then [:left]
      when /RIGHT/ then [:right]
      when /PLACE (?<x>\d+),(?<y>\d+),(?<d>NORTH|EAST|SOUTH|WEST)/ then
        [:place, Regexp.last_match[:x].to_i, Regexp.last_match[:y].to_i,
         Regexp.last_match[:d]]
      else [:invalid_command]
      end
    end
  end
end
