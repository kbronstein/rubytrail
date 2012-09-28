class MyOpenStruct < BasicObject

	def initialize
		@attributes = {}
	end

	def method_missing(method_name, *args)
		attribute = method_name.to_s
		if(attribute =~ /=$/)
			@attributes[attribute.chop] = args[0]
    elsif args.length == 0
			@attributes[attribute]
    else
      super
		end
	end

end


struct = MyOpenStruct.new
struct.foo = "bar"
puts struct.foo
puts struct.joe.nil?
puts struct.non_existent_method(1, 2, 3)
