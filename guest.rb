class Guest
attr_accessor :name, :pocket_money

  def initialize(name, pocket_money)
    @name = name
    @pocket_money = pocket_money
  end

  def check_pocket_money
    return @pocket_money
  end

  def remove_money(price)
    return @pocket_money -= price
  end

end
