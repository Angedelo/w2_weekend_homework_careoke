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
    @room1 = Room.new("Green Room", 10, [@song1, @song2], [@guest1])

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

  # def test_can_add_song_to_room
  #   add_song_to_room(@room1, @song3)
  # end


end
