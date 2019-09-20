class Rooms

  attr_reader :name, :price, :capacity

  def initialize(room_name, room_price, room_capacity)
    @name = room_name
    @price = room_price
    @capacity = room_capacity
    @songs_playing = []
    @room = []
  end

  def add_guest(new_guest)
    if @capacity >= 1
      return @room.push(new_guest).length
      end
  end

  # def reduce_capactity(guest)
  #
  #   @capacity -= 1
  # end


end
