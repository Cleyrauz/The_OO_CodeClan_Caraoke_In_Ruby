require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms")
require_relative("../guest")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("CodeClan Karaoke", 5)
    @room2 = Rooms.new("Cleyra's Dream Party", 5)
    @guest1 = Guest.new("Cleyra", 100)
    @guest2 = Guest.new("Jose", 20)
    @song1 = Songs.new("Imagine")
  end

  def test_has_name
    assert_equal("CodeClan Karaoke", @room1.name)
  end

  def test_add_guest_to_room
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.get_guest_count())
  end

  def test_remove_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.get_guest_count())
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.get_guest_count())
  end

  def test_song_count
  end


#   def test_add_play_list
#     @room1.add_play_list(@song1)
#     @room1.add_play_list(@song2)
#     assert_equal(2, @room1.add_play_list(@songs))
#   end
#
end
