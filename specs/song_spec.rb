require("minitest/autorun")
require('minitest/rg')
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("All the Wine")
  end

  def test_song_has_name
    assert_equal("All the Wine", @song1.name)
  end
end
