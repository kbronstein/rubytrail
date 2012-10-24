Language = Struct.new(:name, :age) do
  alias_method :to_ary, to_a
end

#class Language < Struct.new(:name, :age)
#end

ruby = Language.new('Ruby', 17)

name, age = *ruby
puts name, age


class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  # To enable the splat operator ('*')
  def to_ary
    [ @first_name, @last_name ]
  end
end

matz = Person.new("Yukihiro", "Matsumoto")
first_name, last_name = *matz
puts first_name, last_name
