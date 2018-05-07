require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }


  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "raises error if focking bike in a full station" do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error 'Docking Station Full'
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

    describe '#release_bike' do
      it "releases a bike" do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end

      it "raises an error if there are no bikes" do
        expect { subject.release_bike }.to raise_error 'No Bikes Available'
      end
    end
end
