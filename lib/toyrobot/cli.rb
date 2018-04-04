module Toyrobot
  class CLI
    def initialize(filename)
      @filename = filename
      @table = Table.new
      @simulation = Simulation.new(@table)
      @command = Command.new
    end

    def run
      File.open(@filename, 'r').each { |line| run_command line }
    end

    private

    def run_command(line)
      @simulation.send(*@command.parse(line))
    end
  end
end
