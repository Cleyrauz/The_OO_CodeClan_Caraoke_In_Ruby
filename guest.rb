class Guest
attr_accessor :name, :pocket_money, :favourite_song

  def initialize(name, pocket_money, favourite_song)
    @name = name
    @pocket_money = pocket_money
    @favourite_song = favourite_song
  end

  def remove_money(price)
    if @pocket_money >= price
      @pocket_money -= price
      return price;
    else
      return "Please, go to the IT machine"
    end
  end

end
