#!/usr/bin/env ruby

file =  File.open("/tmp/std.log", "w")

old_stdout = $stdout
$stdout = file
$stderr = $stdout

puts "Hello World"
puts 1 / 0

