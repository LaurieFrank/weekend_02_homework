class Guests

  attr_reader :name, :wallet

  def initialize(guest_name, wallet_value)
    @name = guest_name
    @wallet = wallet_value
    @fav_song = []
  end

  def sufficient_funds?(room)
      return wallet >= room.price()
    end

    def pay_for_room(room)
    if sufficient_funds?(room)
      @wallet -= room.price()
    end
  end
end
