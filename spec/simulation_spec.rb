require 'spec_helper'

RSpec.describe Toyrobot::Simulation do
  context('when ROBOT is NOT on the table') do
    let(:table) { Toyrobot::Table.new }
    subject { Toyrobot::Simulation.new(table) }

    it('can tell that the robot is NOT on the table') do
      expect(subject.robot_on_the_table?).to eq(false)
    end

    it('ignores any command other than PLACE') do
      subject.report
      subject.move
      subject.left
      subject.place(0, 0, 'NORTH')
      expect(subject.report).to be_nil
    end
  end

  context('when ROBOT is on the table') do
    let(:table) { Toyrobot::Table.new }
    subject { Toyrobot::Simulation.new(table) }

    before do
      subject.place(3, 3, 'NORTH')
    end

    it('can tell that the robot is on the table') do
      expect(subject.robot_on_the_table?).to eq(true)
    end

    it('ignores any command that make it fall off the table') do
      4.times { subject.move }
      expect { subject.report }.to output("3,4,NORTH\n").to_stdout
    end
  end

  context('#invalid_command') do
    let(:table) { Toyrobot::Table.new }
    subject { Toyrobot::Simulation.new(table) }
    it { expect(subject.invalid_command).to be_nil }
  end
end
