class Bar

  attr_reader :rooms, :price, :total_tap

  def initialize(rooms, price)
    @rooms = rooms
    @price = price
    @total_tap = 0
  end

  def add_money(price)
    @total_tap += price
    return @total_tap
  end

  def get_price(guest)
    famous_guest_names_list = ['Riki Martin', 'Dua Lipa', 'Bruno Mars']
    if famous_guest_names_list.include?(guest.name)
      return 0;
    else
      return @price;
    end
  end



end
