def show_args(a, b=1, *c)
  p a, b, *c
end


puts 
show_args 1, 2, 3, 4, 5
puts
show_args 1, 2, 3, 4
puts
show_args 1, 2, 3
puts
show_args 1, 2
puts
show_args 1
