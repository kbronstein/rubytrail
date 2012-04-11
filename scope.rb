global = 1

class ScopeTest
  local_to_class = "local_to_class"
  puts "In ScopeTest: ", local_variables

  def method
    local_to_method = " Local to Method"
    puts "in ScopeTest.method():", local_variables
  end
end

obj = ScopeTest.new
obj.method

puts "in Main: ", local_variables
