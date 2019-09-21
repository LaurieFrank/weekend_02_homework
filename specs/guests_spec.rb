require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")
require_relative("../guests")
require_relative("../rooms")

class GuestsTest < MiniTest::Test

  def setup
    @guest1 = Guests.new("Thomas", 100)
    @guest2 = Guests.new("Henrietta", 200)
    @guest3 = Guests.new("Gordon", 350)

    @song1 = Songs.new("Tunnel of Love", "Dire Straits")
    @song2 = Songs.new("Capable of Anything", "Ben Folds")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen")
    @songs = [@song1, @song2, @song3]

    @room1 = Rooms.new("Sodor", 50, 3)
    @room2 = Rooms.new("Station", 60, 2)

  end

  def test_guest_has_name()
    assert_equal("Thomas", @guest1.name())
  end

  def test_amount_in_wallet()
    assert_equal(350, @guest3.wallet)
  end

  def test_sufficient_funds_for_room__false_if_not_enough
    poor_guest = Guests.new("Percy", 10)
    assert_equal(false, poor_guest.sufficient_funds?(@room1))
  end

  def test_guest_can_pay_for_room__decreases_money
    @guest1.pay_for_room(@room1)
    assert_equal(50, @guest1.wallet)
  end

end
