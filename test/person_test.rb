require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < MiniTest::Test
  def setup
    @person = Person.new({"name" => "Charlie", "age" => 18})
  end

  def test_it_exists
    assert_instance_of Person, @person
  end

  def test_it_has_a_name
    assert_equal "Charlie", @person.name
  end
  
  def test_it_has_an_age
    assert_equal 18, @person.age
  end

  def test_it_is_adult
    assert @person.adult?
  end
end
