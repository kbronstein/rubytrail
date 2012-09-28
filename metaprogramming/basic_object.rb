# puts is only available in classes inheriting from Object where the Kernel module is mixed in.
# To use puts we need to call it explicitely using the below trick.
# Referencing a class/module from within a class inheriting from BasicObject requires a double column prefix "::" 
# 
class Foo < BasicObject

  def bar
    ::Kernel.puts ::Time.now
  end
end

Foo.new.bar
