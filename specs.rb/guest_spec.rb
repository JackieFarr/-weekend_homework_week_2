require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Cady", 18, 50, "Africa")
    @guest2 = Guest.new("Regina", 19, 100, "You're so vain")
    @guest3 = Guest.new("Gretchen", 19, 75, "Shake if off")
    @guest4 = Guest.new("Karen", 20, 60, "Spice up your life")

    @room1 = Room.new("Disney", 5, 50, 0)
    @room2 = Room.new("Pop", 10, 70, 0)
    @room3 = Room.new("Rock", 15, 80, 0)
  end

  def test_guest_name
    assert_equal("Cady", @guest1.name)
  end

  def test_guest_age
    assert_equal(19, @guest2.age)
  end

  def test_guest_wallet
    assert_equal(100, @guest2.wallet)
  end

  def test_guest_favourite_song
    assert_equal("Africa", @guest1.favourite_song)
  end

  def test_guest_can_afford_room
    assert_equal("Sorry, you don't have enough money", @guest3.afford_room(@guest3.wallet, @room3.price))
  end

  def test_guest_pays_room
    assert_equal(50, @guest2.pay_room(@guest2.wallet, @room1.price))
  end


end
