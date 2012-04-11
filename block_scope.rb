# http://rubysource.com/getting-to-grips-with-blocks/
n = 10
y = 0
[1,2,3].each do |n|
  x = n
  y = y + n
end
puts 'y='  + y.inspect # => "6"
puts 'n='  + n.inspect # => "3" -- In 1.9.X this will be 10
print 'Is x defined: '
puts  defined? x # => nil

