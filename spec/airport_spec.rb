require 'airport'
require 'plane'

describe Airport do

  context 'Permission to land' do
    it { is_expected.to respond_to :allow_landing }
  end

  context 'Permission to takeoff' do
    it { is_expected.to respond_to :allow_takeoff }
  end

  context 'lands planes' do
    it 'puts planes in the airport' do
      airport = Airport.new
      airport.allow_landing Plane.new
      expect(airport.planes.count).to eq 1
    end
  end

  context 'When the airport is full' do
    it 'should raise error and refuse landing permission' do
      airport = Airport.new
      Airport::CAPACITY.times { subject.allow_landing Plane.new }
      expect { subject.allow_landing Plane.new }.to raise_error 'Airport is full!'
    end
  end
end