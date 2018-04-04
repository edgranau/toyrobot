require 'spec_helper'

RSpec.describe Toyrobot::CLI do
  context('when robot receives valid commands') do
    filepath = File.dirname(__FILE__) + '/fixtures/commands1.txt'
    subject { Toyrobot::CLI.new(filepath) }

    it { expect { subject.run }.to output("0,1,NORTH\n").to_stdout }
  end

  context('with invalid commnands in file') do
    filepath = File.dirname(__FILE__) + '/fixtures/commands4.txt'
    subject { Toyrobot::CLI.new(filepath) }

    it('ignores them') {
      expect { subject.run }.to output("0,0,NORTH\n").to_stdout
    }
  end

  context('with instructions to fall off the table in file') do
    filepath = File.dirname(__FILE__) + '/fixtures/commands5.txt'
    subject { Toyrobot::CLI.new(filepath) }

    it('ignores them') {
      expect { subject.run }.to output("4,4,EAST\n").to_stdout
    }
  end
end
