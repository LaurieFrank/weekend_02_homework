class Rooms

  attr_reader :room_name, :price, :capacity

  def initialize(room_name, room_price, room_capacity)
    @room_name = room_name
    @price = room_price
    @capacity = room_capacity
  end
end
