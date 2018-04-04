require 'spec_helper'

RSpec.describe Toyrobot::Command do
  subject { Toyrobot::Command.new }

  it { expect(subject.parse('REPORT')).to eq([:report]) }
  it { expect(subject.parse(' REPORT')).to eq([:report]) }
  it { expect(subject.parse('REPORT ')).to eq([:report]) }

  it { expect(subject.parse('MOVE')).to eq([:move]) }
  it { expect(subject.parse(' MOVE')).to eq([:move]) }
  it { expect(subject.parse('MOVE ')).to eq([:move]) }

  it { expect(subject.parse('LEFT')).to eq([:left]) }
  it { expect(subject.parse(' LEFT')).to eq([:left]) }
  it { expect(subject.parse('LEFT ')).to eq([:left]) }

  it { expect(subject.parse('RIGHT')).to eq([:right]) }
  it { expect(subject.parse(' RIGHT')).to eq([:right]) }
  it { expect(subject.parse('RIGHT ')).to eq([:right]) }

  it { expect(subject.parse('PLACE 0,0,NORTH')).to eq([:place, 0, 0, 'NORTH']) }
  it {
    expect(subject.parse(' PLACE 0,0,NORTH')).to eq([:place, 0, 0, 'NORTH'])
  }
  it {
    expect(subject.parse('PLACE 0,0,NORTH ')).to eq([:place, 0, 0, 'NORTH'])
  }

  it { expect(subject.parse('RUBISH')).to eq([:invalid_command]) }
end
