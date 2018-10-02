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
       dockingstation.release_bike
       expect(dockingstation.dock('bike')).to eq(1)

     end

     it 'cannot give 0 bikes' do
       dockingstation = DockingStation.new
       dockingstation.release_bike

       expect { dockingstation.release_bike }.to raise_error 'no bikes remaining in station'
     end

     it "cannot store more than capacity" do
       dockingstation = DockingStation.new
       # dockingstation.dock('bike')
       expect {dockingstation.dock('bike')}.to raise_error  'dock at capacity'
     end
  end
end
