class TestMethodMissing1

  def method_missing(name, *args)
    method_name = name.id2name

    puts "You tried to call the non existent method #{method_name} with #{args.size} argument(s): #{args}"
  end
end 

t1 = TestMethodMissing1.new
t1.a = 'A'


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# puts is not available from an instance of TestMethodMissing2, because it inherits from BasicObject.
# puts is defined in the Kernel module which is mixed in Object.
# To call puts we need to make an explicit reference, using the 2 colons notation
# 
class TestMethodMissing2 < BasicObject
  def method_missing(name, *args)
    method_name = name.id2name

    ::Kernel.puts "You tried to call the non existent method #{method_name} with #{args.size} argument(s): #{args}"
  end
end 

t2 = TestMethodMissing2.new
t2.b = 'B';
