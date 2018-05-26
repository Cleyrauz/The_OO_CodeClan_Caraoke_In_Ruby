class Rooms

  attr_accessor :name, :price, :capacity
  #  attr_reader :name

  def initialize(name, price, capacity)
    @name = name
    @price = price
    @songs = ['Imagine', 'La Bamba', 'La vida loca']
    @guest_list = []
    @capacity = capacity
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

  def add_song(song)
    @songs.push(song)
    return @songs.length
  end

  def capacity_room
  return @capacity
  end

  def check_if_too_full(guest)
    if @guest_list.length < @capacity
      add_guest
    else
      return "Too full"
    end
  end

  def favourite_song_is_on_playlist(guest)
    if @songs.include?(guest.favourite_song)
      return "Whoo!"
    else
      return "Buuu"
    end
  end

end
