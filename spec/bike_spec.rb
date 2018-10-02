require 'bike'

RSpec.describe Bike do
  context 'standard specs' do
    it 'checks if bike is working' do
      bike = Bike.new

      expect bike.respond_to?('working?')
    end

    # #not entirely sure whether this should sit in bike or docking DockingStation
    # it 'docks bike in station' do
    #   bike = Bike.new
    #
    #   expect bike.dock.to eq TRUE
    #
    #
    # end

    it 'released bike is working' do
      dockingstation = DockingStation.new
      bike = dockingstation.release_bike

      expect(bike.working?).to eq true
    end
  end
end
