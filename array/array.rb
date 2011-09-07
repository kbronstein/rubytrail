# 

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
