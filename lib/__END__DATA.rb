DATA.each_line  do |line|
  puts line.chomp
end

__END__

Ruby ignores everything after __END__.
It offers a way to retrieve data in this section,
and provides a File named (DATA) already opened whose content 
is everything in between __END__ and the end of the file.
