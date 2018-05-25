class Rooms

  attr_accessor :price, :guest_list
  #  attr_reader :name

  def initialize(name, price)
    @name = name
    @price = price
    @play_list = []
    @guest_list = []
  end

  def add_guest(guest)
    @guest_list.push(guest)
  end

  def get_guest_count
    return @guest_list.length
  end

  def remove_guest(guest)
    @guest_list.delete(guest)
  end

end