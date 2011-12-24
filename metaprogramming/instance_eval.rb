class Person
	attr_accessor :name	
	def initialize(name)
		@name = name
	end
end
eric = Person.new("Eric")

# "A Context Probe is like a snippet of code
# that you dip inside an object to do something in there"
# It breaks encapsulation but this can help in edge cases
# like a testing framework that needs to dybamically add 
# singleton  methods.
#
# Add a singeton method to this instance
eric.instance_eval do
	def hello
		"I'm #{@name}."
	end
end
puts eric.hello

age = 42
puts eric.instance_eval { "#{@name} is #{age}." }
