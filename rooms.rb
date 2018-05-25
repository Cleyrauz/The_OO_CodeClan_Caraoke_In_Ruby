class Rooms

  attr_accessor :name, :price, :songs
  #  attr_reader :name

  def initialize(name, price)
    @name = name
    @price = price
    @songs = []
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

  def get_song_count
    return @songs.length
  end

  # def add_play_list(song)
  #   @play_list.push(song)
  #   return @play_list.length
  # end

end
