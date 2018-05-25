require("minitest/autorun")
require("minitest/rg")

require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hey Jude")
    @song2 = Song.new("La Macarena")
    @song3 = Song.new("Imagine")
  end
