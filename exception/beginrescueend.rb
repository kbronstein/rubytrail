# Quick recap of begin/rescue/end
#

begin
  fail "Unable to continue"   # Raise a RuntimeException
  # raise and fail can be used interchangeably

  puts "Should never reach this point"
rescue => error # catches StandardError hierarchy
  puts error.inspect
  # Using retry here would go back to begin and replay it again
  # Using raise here would reraise the current exception
  # raise XyzException, "error message", Kernel.caller
  #     create a XyzException with the passed in message and stack trace,
  #     with the current method removed, then raise it.
else
  puts "No exception"
ensure
  puts "Cleans things up whether an exception occured or not"
end
