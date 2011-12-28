# ~~~~~~~~~~~~~~~~~~~~~~~~
# Monkey Patching a class
# ~~~~~~~~~~~~~~~~~~~~~~~~
class Array

  # Alias the original push beforehand
  alias old_push push

  # Redefine push
  def push object
      # Call the original push
      self.old_push object

      # Add something new to push
      puts "Added #{object.to_s}"
  end

  def getFirst
    return self[0]
  end

end


array = Array.new
array.old_push "Foo"
array.push "Bar"

puts array.getFirst

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# MonkeyPatching an instance of a class
# Adding a method to a class's instance
# (singleton method)
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

cat = "Felix"
# Add the say_hello method to this instance of the class String
# Singleton method
def cat.say_hello
  "miaow"
end
puts cat.say_hello

# NoMethodError raised because say_hello does not exist at the class level
"Dog".say_hello
