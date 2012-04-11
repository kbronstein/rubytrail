# each {|item| }
digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
digits.each do |digit|
  print digit, ', '
end


# each_pair {|key, value| }
hello = { :french => 'Bonjour', :english => 'Hello', :spanish => 'Hola'}
hello.each_pair do |lang, expression|
  puts "In #{lang.to_s.capitalize} we say: #{expression}"
end
