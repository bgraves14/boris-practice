require 'bike'

describe Bike do
  it "is expected to be working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
end
