require 'pathname'

Dir.chdir('/usr/local/lib')
Pathname.pwd.ascend do |dir|
  puts dir
end

