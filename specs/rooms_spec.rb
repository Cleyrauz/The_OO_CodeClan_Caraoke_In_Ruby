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
  end

  def test_add_guest_to_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal(2, @room1.get_guest_count())
  end

  def test_remove_guest
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.get_guest_count())
  end

end
