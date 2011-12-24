numbers = [1, 2, 4, 3, 5]

print "numbers ="
p numbers

puts
print "numbers.sort =" 
p numbers.sort

print "numbers.reverse =" 
p numbers.reverse

puts "puts numbers ="
puts numbers

puts "puts numbers.to_s =#{numbers.to_s}"
puts

array_methods = Array.public_methods.sort
#super_methods = Array.super.public_methods.sort

#numbers.each do |number|
#	puts number
#end

