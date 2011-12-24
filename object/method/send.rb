obj = Object.new
def obj.talk
	puts "Let's talk"
end

if obj.respond_to?("talk")
	obj.talk   # it knows how to talk,
end
if obj.respond_to? "sing"
	obj.sing   # but does not know how to sing.
end

puts
puts "Below, the methods available to call"
obj.methods.sort.each do |method|
	print method + ', '
end

2.times do
	puts
end
puts "Enter the name of method to call "

method_name = gets.chomp
if obj.respond_to?( method_name)
	puts obj.send(method_name)
end

2.times do puts; end
puts "Now we override the innate method send."
def obj.send
	puts "Override the send method ;-("
end
puts "To still be able to call send the innate method, not the one we wrote, we can use __send__."
puts "Sending the message object_id to the object obj:"
puts "\tobj.__send__ \"object_id\""
puts obj.__send__("object_id")
