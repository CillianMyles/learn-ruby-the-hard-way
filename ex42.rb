## Animal is an object
class Animal
end

## Dog is an Animal
class Dog < Animal

  def initialize(name)
    ## Dog has a name
    @name = name
  end
end

## Cat is an Animal 
class Cat < Animal

  def initialize(name)
    ## Cat has a name 
    @name = name
  end
end

## Person is an object
class Person

  def initialize(name)
    ## Person has a name
    @name = name

    ## Person has a pet
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is a Person
class Employee < Person

  def initialize(name, salary)
    ## Calling Person's constructor
    super(name)
    ## Employee has a salary
    @salary = salary
  end

end

## Fish is an object
class Fish
end

## Salmon is a Fish
class Salmon < Fish
end

## Halibut is a Fish
class Halibut < Fish
end

## rover is an instance of a Dog
rover = Dog.new("Rover")

## satan is an instance of a Cat
satan = Cat.new("Satan")

## mary is an instance of a Person
mary = Person.new("Mary")

## satan is the pet of mary
mary.pet = satan

## frank is an instance of an Employee
frank = Employee.new("Frank", 120000)

## rover is the pet of frank
frank.pet = rover

## flipper is an instance of a Fish
flipper = Fish.new()

## crouse is an instance of a Salmon
crouse = Salmon.new()

## harry is an instance of a Halibut
harry = Halibut.new()
