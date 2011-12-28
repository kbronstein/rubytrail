module AttrAccessor
  def my_attr_accessor(*names)
    names.each do |name|
      define_attr_reader name
      define_attr_writer name
    end
  end

  def my_attr_reader(*names)
    names.each do |name|
      define_attr_reader name
    end
  end

  def my_attr_writer(*names)
    names.each do |name|
      define_attr_writer name
    end
  end

  def define_attr_reader(name)
      define_method(name) do 
        instance_variable_get("@#{name}")
      end
  end

  def define_attr_writer(name)
      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
  end
end

class Test
  extend AttrAccessor

  my_attr_accessor :foo, :bar
  my_attr_writer :write_only
end

test = Test.new
test.bar = 99
puts test.foo = "Foo"
puts test.bar
test.write_only = "the sequel..."
