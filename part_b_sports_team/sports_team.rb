class Team

  attr_reader(:name, :players, :coach, :points)

  attr_writer(:coach)

  def initialize(name, players, coach, points = 0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_name
  #   return @name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def player_in_team?(possible_player)
    for player in @players
      return true if player == possible_player
    end
    return false
  end

  def result(result)
    @points += 3 if result == "win"
    @points += 1 if result == "draw"
  end

end
