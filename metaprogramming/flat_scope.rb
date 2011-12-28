# How to access the variable door_key in:
#   - the class scope
#   - the method scope 
#
#
#door_key = "Key"
#
#class FlatScope
  # Print door_key here

#  def method
    # Print door_key here
#  end
#end


door_key = "sesame"

FlatScope = Class.new do
  puts "In the class: #{door_key}"

  define_method :method do
    puts "In the method: #{door_key}"
  end
end

FlatScope.new.method
