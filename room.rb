class Room

  attr_reader :name, :capacity
  attr_accessor :songs, :guests

  def initialize(name, capacity, songs, guests)
    @name = name
    @capacity = capacity
    @songs = songs
    @guests = guests
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def check_in(guest)
    if @capacity > @guests.length
      @guests.push(guest)
    else
      return "Sorry, we're too busy"
    end
  end

  def check_out(leaving_guest)
    if guests.any? {|guest| guest == leaving_guest}
      @guests.delete(leaving_guest)
    else
      return "Sorry this guest isn't in this room"
    end
  end


end
