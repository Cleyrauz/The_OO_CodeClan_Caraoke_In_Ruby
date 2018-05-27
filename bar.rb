class Bar

  attr_reader :rooms, :price, :total_tap

  def initialize(rooms, price)
    @rooms = rooms
    @price = price
    @total_tap = 0
  end

  def total_tap
    return @total_tap
  end


end
