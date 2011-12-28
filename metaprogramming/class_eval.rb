class Person
        attr_accessor :name
        def initialize(name)
                @name = name
        end
end
gil = Person.new('Gil')

# class_eval breaks the encapsulation to dip
# a block inside a class, for instance to dynamically:
#   - add instance method(s) to a class.
#  - add attribute accessor(s)

gil.class.class_eval do
	attr_accessor :age
	def goodbye
		puts "Goodbye #{name} (#{age})"
	end
end

gil.age = 53
gil.goodbye
