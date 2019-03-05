class Band
  attr_reader :name

  def initialize(name, members)
    @name = name
    @members = members
  end

  def perform(song_title)
    # create empty array
    performance = []
    # loop over array
    for member in @members
    # each member play instrument
      performance << member.play_instrument(song_title)
      end
    # return array
    return performance
  end
end
