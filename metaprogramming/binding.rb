class Simple
  def initialize
    @ivar = "ivar with a value"
  end

  def method(param)
    var = "var with a value"
    binding  # Returns the current bindings
  end
end

binding = Simple.new.method(99) { "a simple block" }

eval "puts self",  binding
eval "puts @ivar",  binding
eval "puts var",   binding
eval "puts param", binding
eval "puts yield", binding
