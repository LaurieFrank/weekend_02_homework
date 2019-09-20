class Rooms

  attr_reader :name, :price, :capacity

  def initialize(room_name, room_price, room_capacity)
    @name = room_name
    @price = room_price
    @capacity = room_capacity
    @songs_playing = []
  end
end
