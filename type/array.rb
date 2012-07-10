numbers = [1, 2, 4, 3, 5]

print "numbers ="
p numbers

puts
print "numbers.sort =" 
p numbers.sort

print "numbers.sort.reverse =" 
p numbers.sort.reverse

puts "puts numbers ="
puts numbers

puts "puts numbers.to_s =#{numbers.to_s}"
puts

array_methods = Array.public_methods.sort
#super_methods = Array.super.public_methods.sort

#numbers.each do |number|
#	puts number
#end

puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'

days = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]

print "The class of an array is ", days.class
puts
print "There are #{days.length} days in a week:", days
puts
puts days
print  "The first day of the week is #{days[0]}"
puts ", and the last one is #{days[-1]}."
puts "The first two days of the week are #{days[0..1]}" # Same as days[0...3]
puts "The last two days of the week are #{days[-2..-1]}"

# (One line) array iterator
days.each { |day| puts day}

# (Multi line) array iterator
days.each do |day|
	print day, ', '
end
puts
puts "Let's make sunday the first day of the week by poping the last element (sunday)and inserting it at the begining of the array using unshift"
days.unshift days.pop
print days
