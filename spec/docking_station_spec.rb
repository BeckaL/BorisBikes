require 'docking_station'

RSpec.describe DockingStation do
  context 'standard specs' do
    it 'returns TRUE if bike releases' do
      dockingstation = DockingStation.new

      expect dockingstation.respond_to?('release_bike')
    end

    it 'released bike is working' do
      dockingstation = DockingStation.new
      bike = dockingstation.release_bike

      expect bike.working?.to eq true
    end

    # #not entirely sure whether this should sit in bike or docking DockingStation
    # it 'docks bike in station' do
    #   dockingstation = DockingStation.new
    #   bike = dockingstation.release_bike
    #
    #
    # end
  end
end
