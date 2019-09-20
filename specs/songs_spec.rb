require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup
    @song1 = Songs.new("Tunnel of Love", "Dire Straits")
    @song2 = Songs.new("Capable of Anything", "Ben Folds")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen")
  end

  def test_song_has_name()
    assert_equal("Bohemian Rhapsody", @song3.name)
  end

  def test_song_has_artist
    assert_equal("Ben Folds", @song2.artist)
  end
end
