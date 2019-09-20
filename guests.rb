class Guests

  attr_reader :name, :wallet

  def initialize(guest_name, wallet_value)
    @name = guest_name
    @wallet = wallet_value
    @fav_song = []
  end
