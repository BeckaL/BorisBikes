require 'docking_station'

RSpec.describe DockingStation do
  context 'standard specs' do
    it 'returns TRUE if bike releases' do
      dockingstation = DockingStation.new

      expect dockingstation.respond_to?('release_bike')
    end
  end
end
