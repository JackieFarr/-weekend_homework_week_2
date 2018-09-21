class Room

  attr_reader :name, :capacity, :price
  attr_accessor :till, :guests, :songs

  def initialize(name, capacity, price, till, guests = [], songs = [])
    @name = name
    @capacity = capacity
    @price = price
    @till = 0
    @guests = guests
    @songs = songs
  end

  def add_guest(guest)
    @guests << guest
  end

  def remove_guest(guest)
    @guests.pop
  end

  def add_song(song)
    @songs << song
  end

  def detele_song(song)
    @songs.delete(song)
  end

  #check how many guests
  #compare guest numbers to capacity of room
  #allow or disallow
  def check_capacity(room, guests)
    if guests <= room.capacity
      return "You can sing!"
    else
      return "Room is not available!"
    end
  end

  def check_fave_song(guest, room)
      if guest.favourite_song == room.songs
        return "WooHoo!"
      else
        return "Sorry, this song isn't available!"
      end
  end



end
