require './lib/bag.rb'

class TrickOrTreater
  attr_reader :costume, :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new()
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.candies.length
  end

  def eat
    @bag.candies.shift
  end

end