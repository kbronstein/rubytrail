#!/usr/bin/env ruby
#
# Mimics the cat command (assuming only text files)

ARGV.each do |filename|

  File.open( filename, 'r') do |f|
    f.each do |record|
      p record
    end
  end
end

