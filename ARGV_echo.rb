#!usr/bin/env ruby

#
# Print the program arguments
#

ARGV.each_with_index do |argv, i|
  puts "ARGV[#{i}] = #{ARGV[i]}"
end
