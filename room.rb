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
    songs.push(song)
  end


end
