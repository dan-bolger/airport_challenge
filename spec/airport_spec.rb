require 'airport'
require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.


describe Airport do
  context 'Permission to land' do
    it { is_expected.to respond_to :allow_landing }
  end

  context 'Permission to takeoff' do
    it { is_expected.to respond_to :allow_takeoff }
  end

  context 'When the airport is full' do
    it 'should raise error and refuse landing permission' do
      airport = Airport.new
      6.times { subject.allow_landing Plane.new }
      expect { subject.allow_landing Plane.new }.to raise_error 'Airport is full!'
    end
  end

  context 'traffic control' do
    xit 'a plane cannot land if the airport is full'

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'weather conditions' do
      xit 'a plane cannot take off when there is a storm brewing'
      xit 'a plane cannot land in the middle of a storm'
    end
  end
end