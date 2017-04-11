require 'docking_station'

describe DockingStation do
  describe ".release_bike" do
    ## This next line is the one that's not right
    it { should eq Bike.new }
  end
  describe ".working?" do
    it { should respond_to }
  end
end
