require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms")
require_relative("../guest")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("CodeClan Karaoke", 5, 2)
    @room2 = Rooms.new("Cleyra's Dream Party", 8, 3)
    @guest1 = Guest.new("Cleyra", 100)
    @guest2 = Guest.new("Jose", 20)
    @guest3 = Guest.new("Adri", 2)
    @song1 = Songs.new("Imagine")
    @song2 = Songs.new("Hey Jude")
  end

  def test_room_has_name
    assert_equal("CodeClan Karaoke", @room1.name)
  end

  def test_add_guest_to_room
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.get_guest_count())
  end

  def test_remove_guest_from_room
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.get_guest_count())
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.get_guest_count())
  end

  def test_get_song_count
  assert_equal(0, @room1.get_song_count)
  end

  def test_add_songs_to_room
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(2, @room1.get_song_count)
  end

  def test_capacity_room
    assert_equal(2, @room1.capacity_room)
  end

  def test_full_room_remove_guest
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal("Too full", @room1.check_if_too_full(@guest))
    @room1.remove_guest(@guest1)
    assert_equal(2, @room1.get_guest_count)
  end

  def test_room_has_a_price
    assert_equal(5, @room1.price)
  end

  def check_pocket_money
    assert_equal(100, @guest1.check_pocket_money)
  end

  def test_remove_money
    @guest1.remove_money(@room1.price)
    assert_equal(95, @guest1.check_pocket_money)
  end



end
