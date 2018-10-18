# National Park

## Instructions

* Clone this repository: git@github.com:turingschool-examples/national_park.git
* Complete the activity below

## Iteration 1 (Tests Provided)

Use TDD to create a `Person` class that responds to the following interaction pattern. A Person is considered an adult if they are age 18 and above.

```ruby
require './lib/person'
#=> true

pry(main)> charlie = Person.new({"name" => "Charlie", "age" => 18})
#=> #<Person:0x00007fa5561c5c98...>

pry(main)> charlie.name
#=> "Charlie"

pry(main)> charlie.age
#=> 18

pry(main)> charlie.adult?
#=> true
```

## Iteration 2

Use TDD to create a `Car` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/person'
#=> true

pry(main)> require './lib/car'
#=> true

pry(main)> car = Car.new
#=> #<Car:0x00007fc0eb1b3678...>

pry(main)> car.passengers
#=> []

pry(main)> charlie = Person.new({"name" => "Charlie", "age" => 18})
#=> #<Person:0x00007fc0ea806fd0...>

pry(main)> jude = Person.new({"name" => "Jude", "age" => 20})    
#=> #<Person:0x00007fc0ea17d498...>

pry(main)> taylor = Person.new({"name" => "Taylor", "age" => 12})    
#=> #<Person:0x00007fc0ea1640d8...>

pry(main)> car.add_passenger(charlie)

pry(main)> car.add_passenger(jude)    

pry(main)> car.add_passenger(taylor)    

pry(main)> car.passengers
#=> [#<Person:0x00007fc0ea806fd0...>, #<Person:0x00007fc0ea17d498...>, #<Person:0x00007fc0ea1640d8...>]

pry(main)> car.num_adults
#=> 2
```
