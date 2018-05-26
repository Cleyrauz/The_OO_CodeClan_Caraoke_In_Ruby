class Guest
attr_accessor :name, :pocket_money, :favourite_song

  def initialize(name, pocket_money, favourite_song)
    @name = name
    @pocket_money = pocket_money
    @favourite_song = favourite_song
  end

  def check_pocket_money
    return @pocket_money
  end

  def remove_money(price)
    return @pocket_money -= price
  end

  def favourite_song
    return @favourite_song
  end

end
