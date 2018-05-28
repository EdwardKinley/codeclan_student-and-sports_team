require("minitest/autorun")
require_relative("../sports_team")

class TestTeam < MiniTest::Test

  # def test_get_name
  #   team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
  #   assert_equal("Liverpool", team.get_name)
  # end
  #
  # def test_get_players__array
  #   team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
  #   assert_equal(["Karius", "van Dijk", "Henderson", "Mane", "Salah"], team.get_players)
  # end
  #
  # def test_get_players__number
  #   team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
  #   assert_equal(5, team.get_players.count)
  # end
  #
  # def test_get_coach
  #   team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
  #   assert_equal("Klopp", team.get_coach)
  # end

  def test_get_name
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal("Liverpool", team.name)
  end

  def test_get_players_array
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(["Karius", "van Dijk", "Henderson", "Mane", "Salah"], team.players)
  end

  def test_get_players__number
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(5, team.players.count)
  end

  def test_get_coach
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal("Klopp", team.coach)
  end

  def test_set_coach
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.coach = "Dalglish"
    assert_equal("Dalglish", team.coach)
  end

  def test_add_new_player
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.add_new_player("Alexander-Arnold")
    assert_equal(6, team.players.count)
  end

  def test_player_in_team__present
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(true, team.player_in_team?("Mane"))
  end

  def test_player_in_team__absent
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(false, team.player_in_team?("Ramos"))
  end

  def test_points__win
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.result("win")
    assert_equal(3, team.points)
  end

  def test_points__lose
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.result("lose")
    assert_equal(0, team.points)
  end

  def test_points__draw
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.result("draw")
    assert_equal(1, team.points)
  end

end
