require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms")
require_relative("../guest")
require_relative("../songs")
require_relative("../bar")
class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("CodeClan Karaoke", 2)
    @room2 = Rooms.new("Cleyra's Dream Party", 3)
    @guest1 = Guest.new("Cleyra", 100, "Imagine")
    @guest2 = Guest.new("Jose", 20, "Hey Jude")
    @guest3 = Guest.new("Adri", 2, "La Bamba")
    @song1 = Songs.new("Imagine")
    @song2 = Songs.new("Hey Jude")
    @bar = Bar.new([@room1, @room2], 5)
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
  assert_equal(3, @room1.get_song_count)
  end

  def test_add_songs_to_room
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(5, @room1.get_song_count)
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
    assert_equal(5, @bar.price)
  end

  def check_pocket_money
    assert_equal(100, @guest1.check_pocket_money)
  end

  def test_remove_money
    @guest1.remove_money(@bar.price)
    assert_equal(95, @guest1.check_pocket_money)
  end

  def test_guest_has_favourite_song
    assert_equal("Imagine", @guest1.favourite_song)
  end

  def test_favourite_song_is_on_playlist
    result = @room1.favourite_song_is_on_playlist(@guest1)
    assert_equal("Whoo!", result)
  end

  def test_favourite_song_is__not_on_playlist
    result = @room1.favourite_song_is_on_playlist(@guest2)
    assert_equal("Buuu", result)
  end

  def test_bar_has_a_total_tap
    assert_equal(0, @bar.total_tap)
  end

  def test_add_money_to_total_tap
    assert_equal(5, @bar.add_money(5))
  end

  def test_guest_effort_room
    assert_equal("Welcome!", @guest1.guest_effort_room(5))
  end

  def test_guest__can_not_effort_room
    assert_equal("Please, go to the IT machine", @guest3.guest_effort_room(5))
  end

  # def test_add_money_tap_from_pocket_money
  #   money = @guest1.remove_money(@bar.price)
  #   @guest1.check_pocket_money
  #   @bar.add_money(money)
  #   assert_equal(@bar.price, @bar.total_tap)
  # end

end
