class Person
  @@count = 0
  attr_reader :name
  attr_accessor :age

  def initialize name, age=0
    @name, @age =  name,  age
    
    @@count +=  1
  end

  def self.total
    @@count
  end

  def say_hello
    puts "I'm #{@name}, I'm #{@age}."
  end
end

elodie = Person.new "Elodie", 24
elodie.say_hello
puts Person.total 

laurianne = Person.new "Laurianne", 22
laurianne.say_hello
puts Person.total

