class Musician
  attr_reader :name

  def initialize(name, instrument_type)
    @name = name
    @instrument = instrument_type
  end

  def play_instrument(song_title)
    return @instrument.play_song(song_title)
  end
end
