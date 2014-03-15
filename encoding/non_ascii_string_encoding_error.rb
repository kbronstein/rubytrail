# This source file contains a String with non ASCII character(s)
# When Ruby 1.9 runs this file, an error occurs
#  non_ascii_string_encoding_error.rb:6: invalid multibyte char (US-ASCII)


puts __ENCODING__
puts "voilà"
