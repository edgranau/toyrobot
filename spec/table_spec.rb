require "spec_helper"

RSpec.describe Toyrobot::Table do
  subject { Toyrobot::Table.new(5,5)}
  
  context "is_valid_position?" do
    it { expect(subject.is_valid_position?(1,2)).to be true }
    it { expect(subject.is_valid_position?(6,2)).to be false }
    it { expect(subject.is_valid_position?(1,7)).to be false }
    it { expect(subject.is_valid_position?(-1,2)).to be false }
    it { expect(subject.is_valid_position?(1,-2)).to be false }
    
  end
  
end
