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

end
