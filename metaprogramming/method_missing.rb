# Excerpt from  http://rubysource.com/ruby-metaprogramming-part-ii/
# create a Country class which responds to a method 
#  is_<countryname>? where <countryname> is the name of the country 
# you’re testing for. 
# As a step further, we’ll also make it respond to
#   is_<countryname>(_or_<countryname>...)? 
# where the _or... can be repeated indefinitely 
# to match a list of possible countries.


class Country
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end


france = Country.new('France')
france.class.class_eval
