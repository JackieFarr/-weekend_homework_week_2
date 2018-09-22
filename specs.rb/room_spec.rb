require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Disney", 5, 50, 0)
    @room2 = Room.new("Pop", 10, 70, 0)
    @room3 = Room.new("Rock", 15, 80, 0)
    @room4 = Room.new("Girl Band", 8, 60, 0, 3, "Spice up your life")

    @guest1 = Guest.new("Cady", 18, 50, "Africa")
    @guest2 = Guest.new("Regina", 19, 100, "You're so vain")
    @guest3 = Guest.new("Gretchen", 19, 75, "Shake if off")
    @guest4 = Guest.new("Karen", 20, 60, "Spice up your life")

    @song1 = Song.new("Circle of Life")
    @song2 = Song.new("Bring it all Back")
    @song3 = Song.new("Sweet Child of Mine")
    @song4 = Song.new("Highway to Hell")
    @song5 = Song.new("Under the Sea")
    @song6 = Song.new("Cest la Vie")
  end

  def test_room_name
    assert_equal("Disney", @room1.name)
  end

  def test_room_capacity
    assert_equal(10, @room2.capacity)
  end

  def test_room_price
    assert_equal(80, @room3.price)
  end

  def test_add_guest_to_room
    @room1.add_guest(@guest1.name)
    assert_equal(1, @room1.guests.length)
  end

  def test_remove_guest_from_room
    @room1.remove_guest(@guest2.name)
    assert_equal(0, @room1.guests.length)
  end

  def test_add_song_to_room
    @room1.add_song(@song1.title)
    assert_equal(["Circle of Life"], @room1.songs)
  end

  def test_room_has_capacity_for_guests
    assert_equal("You can sing!", @room1.check_capacity(@room1, 5))
  end

  def test_check_guest_fave_song_is_on_playlist
    assert_equal("WooHoo!", @room4.check_fave_song(@guest4, @room4))
  end

  def test_room_till_inceases
    #room1 till should increase from 0 to 50 when used
    assert_equal(50, @room1.till_increases(@guest1, @room1))
  end



end
