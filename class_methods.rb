# 2 options to define class methods:
class C

  #  Option 1: Define the methods in a "class << self block"
  class << self
    def foo
      "I'm the class method foo"
    end
  end


  # Option 2: Your class extends a module 
  # where  the methods are defined
  module ClassMethods
    def bar
      "I'm the class method bar"
    end
  end
  extend self::ClassMethods

end


puts C.foo
puts C.bar

