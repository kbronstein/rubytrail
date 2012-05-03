#!/usr/bin/env ruby -w
# encoding: UTF-8

require 'socket'

child_socket, parent_socket = Socket.pair(:AF_UNIX, :DGRAM, 0)
maxlen = 1000

fork do
  parent_socket.close

  10.times do
    instruction = child_socket.recv(maxlen)
    child_socket.send("#{instruction} accomplished!", 0)
  end
end

child_socket.close

5.times do
  parent_socket.send("Heavy lifting", 0)
end

10.times do
  $stdout.puts(parent_socket.recv(maxlen))
end
