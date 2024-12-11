class Apartment

  attr_reader :rooms

  def initialize()
    @rented = false
    @rooms = []
  end
  
  def is_rented? 
    @rented
  end

  def rent
    @rented = !@rented
  end

  def add_room(new_room)
    if @rooms.length < 4
      @rooms << new_room
    else
      puts "Max number of rooms reached"
    end
  end

  def list_rooms_by_name_alphabetically
    names = @rooms.map {|room| room.name}
    return names.sort
  end
end