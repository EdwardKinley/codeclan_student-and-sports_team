require("minitest/autorun")
require_relative("../sports_team")

class TestTeam < MiniTest::Test

  def test_get_name
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal("Liverpool", team.get_name)
  end

  def test_get_players_array
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(["Karius", "van Dijk", "Henderson", "Mane", "Salah"], team.get_players)
  end

  def test_get_players__number
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal(5, team.get_players.count)
  end

  def test_get_coach
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    assert_equal("Klopp", team.get_coach)
  end

  def test_set_coach
    team = Team.new("Liverpool", ["Karius", "van Dijk", "Henderson", "Mane", "Salah"], "Klopp")
    team.set_coach("Dalglish")
    assert_equal("Dalglish", team.get_coach)
  end

end
