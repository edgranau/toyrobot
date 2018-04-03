require "spec_helper"

RSpec.describe Toyrobot::Simulation do
  context("when ROBOT is NOT on the table") do
    let(:table) { Toyrobot::Table.new(5, 5) }
    subject { Toyrobot::Simulation.new(table) }
    it("ignores any command other than PLACE") do
      subject.report
      subject.move
      subject.left
      subject.place(0,0,"NORTH")
      expect(subject.report).to eql "0,0,NORTH"
    end
  end

  context("when ROBOT is on the table") do
    let(:table) { Toyrobot::Table.new(5, 5) }
    subject { Toyrobot::Simulation.new(table) }
    it("ignores any command that make it fall off the table") do
      subject.place(3,3,"NORTH")
      subject.move
      subject.move
      subject.move
      subject.move
      expect(subject.report).to eql "3,4,NORTH"
      subject.right
      subject.move
      subject.move
      expect(subject.report).to eql "4,4,EAST"
    end
  end
end
