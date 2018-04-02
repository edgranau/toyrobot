require "spec_helper"

RSpec.describe Toyrobot::Robot do
  context("Before a valid PLACE command") do
    it "shows the robot's default position" do
      expect(subject.report).to eql "-1,-1,N/A"
    end
  
  end
  
  context("After a valid PLACE command") do
    subject { Toyrobot::Robot.new(0,0,"NORTH")}
    
    it "shows the robot's current position" do
      expect(subject.report).to eql "0,0,NORTH"
    end
  
  end

  context("when facing NORTH") do
    subject { Toyrobot::Robot.new(0,0,"NORTH") }

    it "moves NORTH" do
      subject.move
      expect(subject.report).to eql "0,1,NORTH"
    end

    it "turns LEFT, faces WEST" do
      subject.left
      expect(subject.report).to eql "0,0,WEST"
    end
  end

  context("when facing SOUTH") do
    subject { Toyrobot::Robot.new(0,1,"SOUTH") }

    it "moves SOUTH" do
      subject.move
      expect(subject.report).to eql "0,0,SOUTH"
    end

    it "turns LEFT, faces EAST" do
      subject.left
      expect(subject.report).to eql "0,1,EAST"
    end
  end

  context("when facing EAST") do
    subject { Toyrobot::Robot.new(0,0,"EAST") }

    it "moves EAST" do
      subject.move
      expect(subject.report).to eql "1,0,EAST"
    end

    it "turns LEFT, faces NORTH" do
      subject.left
      expect(subject.report).to eql "0,0,NORTH"
    end
  end

  context("when facing WEST") do
    subject { Toyrobot::Robot.new(1,0,"WEST") }

    it "moves WEST" do
      subject.move
      expect(subject.report).to eql "0,0,WEST"
    end

    it "turns LEFT, faces SOUTH" do
      subject.left
      expect(subject.report).to eql "1,0,SOUTH"
    end
  end
end
