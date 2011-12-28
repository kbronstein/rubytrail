# http://rubysource.com/getting-to-grips-with-blocks/
n = 10
y = 0

for n in (1..3)
  x = n
  y = y + n
end

puts 'y='  + y.inspect
# => "6"

puts 'n='  + n.inspect
# => "3" -- In 1.9.X this will be 10

print 'x is defined' if defined? x
# => x is defined because for does not create a block on its own like each does

