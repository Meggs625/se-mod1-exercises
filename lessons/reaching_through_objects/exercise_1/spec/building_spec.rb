require "rspec"
require_relative "../lib/building.rb"
require_relative "../lib/apartment.rb"

RSpec.describe Building do

  it "Should be an instance of the Building class" do
    building_1 = Building.new("25", "Spanish Towers")
    expect(building_1).to be_a(Building)
  end

  it "Should have a readable name and number" do
    building_1 = Building.new("25", "Spanish Towers")
    expect(building_1.number).to eq("25")
    expect(building_1.name).to eq("Spanish Towers")
  end

  it "Should container apartments" do
    building_1 = Building.new("25", "Spanish Towers")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    
    building_1.add_apartment(apt_1)
    building_1.add_apartment(apt_2)
    building_1.add_apartment(apt_3)

    expect(building_1.list_apartments).to match_array([apt_1, apt_2, apt_3])

  end
end