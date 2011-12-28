module M
	class C
		MyConstant = 'Address'
		module M2
			puts "Module nesting:"
			p Module.nesting
		end
	end
end

M::C::M2
puts
puts "Top level constants:"
p Module.constants.sort
puts
puts "::RUBY_VERSION = #{::RUBY_VERSION}"
