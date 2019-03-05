class Team
  attr_reader :name, :players, :leader, :score
  attr_writer :leader
  def initialize(name, players, leader)
    @name = name
    @players = players.class
    @leader = leader
    @score = 0
  end

  def add_player(player_new)
    @players << player_new
  end

  def check_team?(checked_player)
    return @players.include?(checked_player)
  end

  def update_points(victory)
    victory ? @score += 1 : @score -= 1
  end
end
