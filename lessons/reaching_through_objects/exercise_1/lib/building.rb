class Building
  attr_reader :number, :name

  def initialize(number, name)
    @number = number
    @name = name
    @apartments = []
  end

  def add_apartment(new_apt)
    if @apartments.length < 4
      @apartments << new_apt
    else 
      puts "Exceeded number of apartments"
    end
  end

  def list_apartments
    @apartments
  end

end