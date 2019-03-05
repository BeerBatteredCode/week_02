class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_take_fish_from_river(fish)
    @stomach << fish
  end

  def can_a_bear_roar(roar)
    return "I'm a bear, hear me #{roar}!"
  end

end
