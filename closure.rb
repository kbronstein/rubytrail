# Excerpt from http://en.wikipedia.org/wiki/Closure_%28computer_science%29

def foo
	f= Proc.new { return "return from foo from inside Proc" }
	f.call # control leaves foo here
	return "return from foo"
end

puts foo # prints "return from foo from inside Proc"

def bar
	f = lambda { return "return from lambda"}
	f.call # control does not leave bar here
	return "return from bar"
end

puts bar # prints "return from bar"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~é
class Fixnum
  def times
    if block_given?
      for i in (1..self)
        yield i
      end
    else
      Enumerable::Enumerator.new self
    end
  end
end

5.times { |n| puts "Hi #{n}" }
enumerator = 5.times
puts enumerator.class
