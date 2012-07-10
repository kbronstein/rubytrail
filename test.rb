require "debug"

class Test

  def name=(name)
    #require 'pry';binding.pry
debugger
    @name ||= name
  end

  def to_s
    @name
  end
end


test = Test.new
test.name = 'Foo'
puts test #=> Foo

test.name = 'Bar' 
puts test #=> Foo @name is unchanged

