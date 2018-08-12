class Guest

  attr_reader :name
  attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_money(cost)
    @wallet -= cost
  end

  def select_song(room, requested_song)
    if room.songs.find {|song| song == requested_song}
      return "I am singing #{requested_song.name}"
    end
      return "Sorry, this room doesn't have that song"
  end



end
