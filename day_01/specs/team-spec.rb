require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("Broncos", ["Jim", "Bob", "Adam"], "Coach")
  end

  def test_add_player
    @team.add_player("Jim-Bob")
    assert_equal(true, @team.players.include?("Jim-Bob"))
  end

  def test_check_team
    assert_equal(true, @team.check_team?("Adam"))
  end

  def test_update_points
    old_score = @team.score
    @team.update_points(true)
    assert_equal(old_score + 1, @team.score)
  end
end
