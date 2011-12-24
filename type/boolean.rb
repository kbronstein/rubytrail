puts "All objects are true except false and nil"

if ! nil
	puts "nil is false"
end
if "ABC"
	puts "Strings are true"
end
if 0 and 1 and 0.1 and -1
	puts "numbers are true, even 0 and 1"
end
if puts "puts returns nil"
	puts "This won't be displayed"
end
