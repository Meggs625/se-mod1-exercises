require 'rspec'
require_relative "../lib/apartment.rb"
require_relative "../lib/room.rb"

RSpec.describe Apartment do

  it "Should be an instance of Aparment" do
    new_apartment = Apartment.new
    expect(new_apartment).to be_a(Apartment)
  end

  it "should indicate whether it is rented or not" do
    new_apartment = Apartment.new
    expect(new_apartment.is_rented?).to eq(false)
  end

  it "Should be able to be rented if available" do
    new_apartment = Apartment.new
    new_apartment.rent
    expect(new_apartment.is_rented?).to eq(true)
  end

  it "Should allow for the adding of new rooms" do
    new_apartment = Apartment.new
    new_apartment.add_room(Room.new("bathroom"))
    new_apartment.add_room(Room.new("laundry"))
    new_apartment.add_room(Room.new("kitchen"))
    new_apartment.add_room(Room.new("bedroom"))
    expect(new_apartment.rooms.length).to eq(4)
  end

  it "Should not allow for more than 4 rooms to be added" do
    new_apartment = Apartment.new
    new_apartment.add_room(Room.new("bathroom"))
    new_apartment.add_room(Room.new("laundry"))
    new_apartment.add_room(Room.new("kitchen"))
    new_apartment.add_room(Room.new("bedroom"))
    new_apartment.add_room(Room.new("study"))

    expect(new_apartment.rooms.length).to eq(4)
  end

  it "Should like all names alphabetically" do
    new_apartment = Apartment.new
    new_apartment.add_room(Room.new("bathroom"))
    new_apartment.add_room(Room.new("laundry"))
    new_apartment.add_room(Room.new("kitchen"))
    new_apartment.add_room(Room.new("bedroom"))

    expect(new_apartment.list_rooms_by_name_alphabetically).to match_array(["bathroom", "bedroom", "kitchen", "laundry"])
  end 
end