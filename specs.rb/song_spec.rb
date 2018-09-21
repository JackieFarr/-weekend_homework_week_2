require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
    @song8 = Song.new("Roxanne")
  end

  def test_song_has_title
    assert_equal("Roxanne", @song8.title)
  end


end
