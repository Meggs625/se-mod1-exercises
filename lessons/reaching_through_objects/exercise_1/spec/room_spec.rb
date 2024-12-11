require 'rspec'
require_relative '../lib/room.rb'

RSpec.describe Room do 
  it "Should be a class instance" do
    bathroom = Room.new('bathroom')
    expect(bathroom).to be_a(Room)
  end

  it "Should have a name" do
    bathroom = Room.new('bathroom')
    expect(bathroom.name).to eq('bathroom')
  end


end