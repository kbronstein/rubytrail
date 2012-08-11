# Quick recap of begin/rescue/end
#

begin
  fail "Unable to continue"
  # raise and fail can be used interchangeably

  puts "Should never reach this point"
rescue => error # catches StandardError hierarchy
  puts error.inspect
ensure
  puts "Cleans things up whether an exception occured or not"
end
