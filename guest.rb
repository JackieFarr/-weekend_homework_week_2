class Guest

  attr_reader :name, :age, :wallet, :favourite_song

  def initialize(name, age, wallet, favourite_song)
    @name = name
    @age = age
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def pay_room(guest, room)
    if guest >= room
      return "You can afford to sing!"
    else
      return "Sorry, you don't have enough money"
    end
  end



end
