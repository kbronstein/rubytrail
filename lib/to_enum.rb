def (n=1)
  yield 1 * n
  yield 2 * n 
  yield 3 * n
  yield 4 * n
end


puts to_enum(:digits)
to_enum(:digits).each  do |yield_result|
  puts "#{yield_result}"
end

#  enum_for is an alias for to_enum

