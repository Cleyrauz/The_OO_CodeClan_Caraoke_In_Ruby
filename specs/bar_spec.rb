require("minitest/autorun")
require("minitest/rg")

require_relative("../bar")
require_relative("../rooms")

class BarTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("CodeClan Karaoke", 2)
    @room2 = Rooms.new("Cleyra's Dream Party", 3)
    @bar = Bar.new([@room1, @room2], 5)
  end

  def test_bar_has_money
   assert_equal(0, @bar.total_tap)
 end

  # def add_money_tap_from_pocket_money
  # end

end
