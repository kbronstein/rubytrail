open(__FILE__, 'r')  do |file|
  puts file.external_encoding()
  puts file.internal_encoding()
end
