require("minitest/autorun")
require("minitest/rg")

require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Hey Jude")
    @song2 = Songs.new("Imagine")
    @song3 = Songs.new("La Macarena")
  end

def test_song_has_name
assert_equal("Hey Jude", @song1.name)
end

end
