class Bag
  attr_reader :candies
  
  def initialize()
    @candies = []
  end

  def count
    @candies.length
  end

  def empty?
    if count == 0
      true
    else
      false
    end
  end

  def add_candy(new_candy)
    @candies << new_candy
  end

  def contains?(candy_type)
    @candies.any? { |candy| candy.type == candy_type}
  end
end