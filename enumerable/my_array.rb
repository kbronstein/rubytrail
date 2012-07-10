require "my_enumerable"

class MyArray
  include MyEnumerable

  attr_accessor :array

  def initialize(array=[])
    @array = array
  end

  def each
    return self unless block_given?

    for item in array
      yield item
    end
  end
end
