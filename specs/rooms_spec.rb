require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")
require_relative("../guests")
require_relative("../rooms")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Rooms.new("Sodor", 50, 3)
    @room2 = Rooms.new("Station", 60, 2)

    @guest1 = Guests.new("Thomas", 100)
    @guest2 = Guests.new("Henrietta", 200)
    @guest3 = Guests.new("Gordon", 350)
    @guests = [@guest1, @guest2, @guest3]

    @song1 = Songs.new("Tunnel of Love", "Dire Straits")
    @song2 = Songs.new("Capable of Anything", "Ben Folds")
    @song3 = Songs.new("Bohemian Rhapsody", "Queen")
    @songs = [@song1, @song2, @song3]
  end

  def test_room_has_name()
      assert_equal("Sodor", @room1.name())
  end

  def test_room_price()
    assert_equal(60, @room2.price())
  end

  def test_room_capacity()
    assert_equal(3, @room1.capacity())
  end

  def test_add_guest_to_room()
    new_guest = @room1.add_guest(@guest1)
    assert_equal(1, new_guest)
  end

  def test_remove_guest_from_room()
    @room1.add_guest(@guest1.name)
    @room1.add_guest(@guest2.name)
    guest = @room1.remove_guest(@guest1.name)
    assert_equal(1, guest)
    p @rooms
    #need capactiy somewhere?
  end


    def test_add_songs_to_room()
      song_playing = @room1.add_song(@song2.name)
      assert_equal(["Capable of Anything"], song_playing)
    end

end

#test room starts empty of Guests
#room can remove Guests
#test room starts empty of Songs
#test you can add test_song_has_artist
