def shared_scope_methods
  # variable shared among the below 2 methods
  # There is now way to access it outside of this scope
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :increment do |i|
    shared += i
  end
end


shared_scope_methods

puts counter
increment 1
puts counter
increment 3
puts counter

puts shared # shared is not accessible because not in this scope
