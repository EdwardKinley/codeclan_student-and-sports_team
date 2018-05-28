require("minitest/autorun")
require_relative("../codeclan_student")

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Edward", "E22")
    assert_equal("Edward", student.get_name)
  end

  def test_get_cohort
    student = Student.new("Edward", "E22")
    assert_equal("E22", student.get_cohort)
  end

  def test_change_name
    student = Student.new("Edward", "E22")
    student.change_name("Gandalf")
    assert_equal("Gandalf", student.get_name)
  end

  def test_change_cohort
    student = Student.new("Edward", "E22")
    student.change_cohort("M1")
    assert_equal("M1", student.get_cohort)
  end

def test_talk
  student = Student.new("Edward", "E22")
    assert_equal("I can talk!", student.talk)
end

def test_say_favourite_language
  student = Student.new("Edward", "E22")
  assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
end

end
