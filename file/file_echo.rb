#!/usr/bin/env ruby
#
# Print the content of this file on the standard output

this_file = File.expand_path(__FILE__)

File.open( this_file, 'r') do |f|
  f.each_line do |line|
    puts line.chomp
  end
end
