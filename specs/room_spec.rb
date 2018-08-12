require("minitest/autorun")
require('minitest/rg')
require_relative("../song")
require_relative("../guest")
require_relative("../room")

class RoomTest < MiniTest::Test

  def setup

    @song1 = Song.new("All the Wine")
    @song2 = Song.new("Kali Ma")
    @song3 = Song.new("Mr November")

    @guest1 = Guest.new("Alice", 100)
    @guest2 = Guest.new("Rob", 25)
    @room1 = Room.new("Green Room", 10, [@song1, @song2], [@guest1])
    @room2 = Room.new("Red Room", 15, [@song1, @song2], [@guest1, @guest2])
    @room3 = Room.new("Small Room", 1, [], [@guest1])
  end

  def test_room_has_name
    assert_equal("Green Room", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(10, @room1.capacity)
  end

  def test_room_has_songs
    assert_equal(2, @room1.songs.length)
  end

  def test_room_has_guests
    assert_equal(1, @room1.guests.length)
  end

  def test_can_add_song_to_room
    expected = @room1.add_song_to_room(@song3).length
    assert_equal(3, expected)
  end

  def test_check_in_guest
    expected = @room1.check_in(@guest2).length
    assert_equal(2, expected)
  end

  def test_check_in_guest_over_capacity
    assert_equal("Sorry, we're too busy", @room3.check_in(@guest2))
  end

  def test_can_check_out_guest
    @room2.check_out(@guest1)
    expected = @room2.guests.length
    assert_equal(1, expected)
  end

  def test_can_check_out_guest__no_guest
    assert_equal("Sorry this guest isn't in this room", @room1.check_out(@guest2))
  end


end
