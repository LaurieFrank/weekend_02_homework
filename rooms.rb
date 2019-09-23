class Rooms

  attr_reader :name, :price, :capacity

  def initialize(room_name, room_price, room_capacity)
    @name = room_name
    @price = room_price
    @capacity = room_capacity
    @songs_playing = []
    @rooms = []
  end

  def add_guest(new_guest)
    if @capacity >= 1
      # return @rooms.push(new_guest).length
    r@rooms.push(new_guest).size
    end
  end

  def remove_guest(guest)
    @rooms.shift(guest).size
  end
  #this works to add with .push but when replaced with .delete or .shift
  #it doesn't?

  # def remove_guest(guest)
  #   for guest in @guests
  #     if guest.name = @guest1.name
  #       return guest.delete
  #     end
  #   end
  # end

#could remove guest by index position. possible with .each

#   def remove_guest(guest)
#       # return @rooms.push(new_guest).length
#       # return @rooms.shift(guest).size
# rooms.index { |room| room.0 }
#   end

  # def reduce_capactity(guest)
  #
  #   @capacity -= 1
  # end

  # def remove_guest(room)
  #   # for room in @rooms
  #   # room.shift.length == @capacity
  #   # end
  #   person = room.get_fish()
  #   @food << fish if !fish.nil?
  # end


  def add_song(new_song)
    @songs_playing.push(new_song)
  end
end
