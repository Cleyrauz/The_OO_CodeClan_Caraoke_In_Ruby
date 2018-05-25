require("minitest/autorun")
require("minitest/rg")

require_relative("../guest")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
  @guest1 = Guest.new("Cleyra", 50)
  @guest2 = Guest.new("Jose", 20)
  @guest3 = Guest.new("Raul", 80)
  end

  def guest_has_a_name
    assert_equal("Cleyra", @guest1.name)
  end

  def guest_has_pocket_money
    assert_equal(50, @guest1.pocket_money)
  end

end
