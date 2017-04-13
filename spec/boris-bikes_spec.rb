require 'docking_station'
require 'bike'

describe DockingStation do
  ## The class 'DockingStation' should respond to the command to release a bike, using release_bike
  it { is_expected.to respond_to :release_bike }

#  it 'releases working bikes' do
    ## (potential confusion) create a new variable 'bike' that is equal
    ## to the return value of 'release_bike' method on the new instance of the
    ## original class
    ## e.g. bike = DockingStation.new.release_bike
#    bike = subject.release_bike
    ## we should expect that the variable 'bike' should return 'true' when
    ## we call the method 'be_working' on it
#    expect(bike.working?).to(eq(true))
#  end

it { is_expected.to respond_to(:dock).with(1).argument}

it { is_expected.to respond_to(:bike) }

it 'returns docked bikes' do
  bike = Bike.new
  subject.dock(bike)
  # Again, we need to return the bike we just docked
  expect(subject.bike).to eq bike
end

describe '#release_bike' do
  it 'returns an error when there are no bikes' do
    expect { subject.release_bike }.to raise_error "There are no bikes"
  end
end

describe '#dock' do
  it 'returns an error when station is full' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) }.to raise_error "The station is full"
  end
end
#  it 'docks a new bike' do
#    expect(subject.instance_variable_get(:@bike)).to be_an_instance_of(Bike)
#  end

#  it 'docks a new bike' do
#    unless subject.instance_variable_get(:@bike).is_a? Bike
#     fail
#    end
#  end
end
