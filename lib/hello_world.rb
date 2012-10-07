class HelloWorld

  def initialize(io)
    @io = io
  end

  def start
    @io.puts "Hello, World!"
  end

end
