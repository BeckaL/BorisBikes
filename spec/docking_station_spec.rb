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

       expect(dockingstation.dock('bike')).to eq(true)

     end
  end
end
