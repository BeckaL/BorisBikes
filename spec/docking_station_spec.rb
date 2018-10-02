require 'docking_station'

RSpec.describe DockingStation do
  context 'standard specs' do
    it 'returns TRUE if bike releases' do
      dockingstation = DockingStation.new

      #not sure why sintax works, but it does
      expect dockingstation.respond_to?('release_bike')
    end

     it 'docks bike in station' do
       dockingstation = DockingStation.new

       expect(dockingstation.dock('bike')).to eq(2)

     end

     it 'cannot give 0 bikes' do
       dockingstation = DockingStation.new
       dockingstation.release_bike
       p dockingstation.check_bikes
       p dockingstation.release_bike

       expect { dockingstation.release_bike 'no bikes remaining in station' }.to raise_error
     end
  end
end
