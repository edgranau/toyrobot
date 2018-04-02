require "spec_helper"

RSpec.describe Toyrobot::Robot do
  context("before a valid PLACE command") do
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
end
