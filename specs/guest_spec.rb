require("minitest/autorun")
require('minitest/rg')
require_relative("../song")
require_relative("../guest")
require_relative("../room")

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("All the Wine")
    @song2 = Song.new("I Need My Girl")
    @song3 = Song.new("Sweet Disposition")

    @guest1 = Guest.new("Alice", 100)

    @room1 = Room.new("Green Room", 10, [@song1, @song2], [@guest1])
  end

  def test_guest_has_name
    assert_equal("Alice", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest1.wallet)
  end
  #
  def test_guest_can_pay_money
    @guest1.pay_money(5)
    assert_equal(95, @guest1.wallet)
  end
  #
  def test_guest_can_select_song
    expected = @guest1.select_song(@room1, @song1)
    assert_equal("I am singing All the Wine", expected)
  end

  def test_guest_cannot_select_song
    expected = @guest1.select_song(@room1, @song3)
    assert_equal("Sorry, this room doesn't have that song", expected)
  end

  # def guest_can_check_in
  #   @guest1.check_in("Green Room")
  #   assert_equal(["Alice"], @room1.guests)
  # end

end
