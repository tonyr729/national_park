require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/person'

class CarTest < MiniTest::Test
  def setup
    @car = Car.new
  end

  def test_it_exists
    assert_instance_of Car, @car    
  end

  def test_it_starts_with_no_passengers
    assert_equal [], @car.passengers
  end

  def test_it_can_add_passengers
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12}) 

    @car.add_passenger(charlie)
    @car.add_passenger(jude)
    @car.add_passenger(taylor)

    assert_equal [charlie, jude, taylor], @car.passengers
  end

  def test_it_can_count_number_of_adult_passengers
    charlie = Person.new({"name" => "Charlie", "age" => 18})
    jude = Person.new({"name" => "Jude", "age" => 20})
    taylor = Person.new({"name" => "Taylor", "age" => 12}) 

    @car.add_passenger(charlie)
    @car.add_passenger(jude)
    @car.add_passenger(taylor)
    
    assert_equal 2, @car.num_adults
  end
end