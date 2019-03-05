require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearRiverFishTest < MiniTest::Test

  def setup

    @bear1 = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Fishy")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Willy")
    @river1 = River.new("Amazon", [@fish1, @fish2, @fish3])

  end

  def test_name_of_river
    assert_equal("Amazon", @river1.name)
  end

  def test_river_for_fish
    assert_equal(3, @river1.fish.count)
  end

  def test_fishes_name
    assert_equal("Fishy", @fish1.name)
  end

  def test_name_and_type
    assert_equal("Yogi", @bear1.name)
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bears_stomach_empty
    assert_equal([], @bear1.stomach)
  end

  def test_bear_take_fish_from_river
    assert_equal(3, @river1.fish.count)
    assert_equal(0, @bear1.stomach.count)
    @bear1.bear_take_fish_from_river(@fish1)
    @river1.bear_take_fish_from_river(@fish1)
    assert_equal(1, @bear1.stomach.count)
    assert_equal(2, @river1.fish.count)
  end

  def test_can_a_bear_roar
    assert_equal("I'm a bear, hear me ROAR!", @bear1.can_a_bear_roar("ROAR"))
  end

end
