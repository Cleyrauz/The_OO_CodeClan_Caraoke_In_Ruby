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

end
