#!/usr/bin/env ruby
# encoding: UTF-8
# Source: http://jstorimer.com/2012/04/19/intro-to-ruby-ipc.html

reader, writer = IO.pipe

fork do
  reader.close

  10.times do
    writer.puts "Hello World"
  end
end

writer.close
while line = reader.gets
  $stdout.puts line
end

