require 'capybara/rspec'
require 'plane'
require 'airport'

feature 'Planes can land at the airport' do
  scenario 'A plane can land at the airport' do
    plane = Plane.new
    airport = Airport.new
    airport.allow_landing(plane)
    expect(airport.planes).to eq [plane]
    expect(plane.flying_status).to be false
  end

  scenario 'Plane can take off from the airport' do
    aeroplane = Plane.new
    airport = Airport.new
    airport.allow_takeoff(aeroplane)
    expect(aeroplane.flying_status).to be true
  end
end

feature 'Planes cannot land when airport is full' do
  scenario 'A plane tries to land when airport is full' do
    aeroplane = Plane.new
    airport = Airport.new
    Airport::CAPACITY.times { airport.allow_landing Plane.new }
    expect { airport.allow_landing Plane.new }.to raise_error 'Airport is full!'
  end
end

feature 'Planes have a flying status when initialised'

# feature 'Planes cannot land when conditions are stormy' do
#   scenario 'A plane tries to land when it\'s stormy' do
#     aeroplane = Plane.new
#     airport = Airport.new
#     # (somehow knows it's stormy or not)
#     expect { airport.allow_landing Plane.new }.to raise_error 'It\'s too stormy to fly!'
#     end

#   scenario 'A plane tries to take off when it\'s stormy' do |variable|
#     aeroplane = Plane.new
#     airport = Airport.new
#     # (somehow knows it's stormy or not)
#     expect { airport.allow_landing Plane.new }.to raise_error 'It\'s too stormy to land!'
    # end

  # end
# end