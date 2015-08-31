require 'plane'
require 'airport'

describe Plane do

  context 'landing' do
    it { is_expected.to respond_to :lands }
  end

  context 'taking off' do
    it { is_expected.to respond_to :takes_off }
  end

  it 'has a flying status when created' do
    expect(subject.flying_status).to be true
  end

  it 'Has a landed status when landed' do
    subject.lands
    expect(subject.flying_status).to be false
  end

  it 'changes its status to flying after taking off' do
    subject.takes_off
    expect(subject.flying_status).to be true
  end

end
