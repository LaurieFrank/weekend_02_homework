require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")
require_relative("../guests")

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Thomas", 100)
    @guest2 = Guests.new("Henrietta", 200)
    @guest3 = Guests.new("Gordon", 350)

    @song1 = Songs.new("Tunnel of Love", "Dire Straits")
    @song2 = Songs.new("Capable of Anything", "Ben Folds")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen")
    @songs = [@song1, @song2, @song3]
  end
  
end
