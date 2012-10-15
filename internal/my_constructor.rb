# Thanks @avdi for sharing this:
#   http://devblog.avdi.org/2012/10/08/rubytapas-episode-7-constructors/
#
# Mimic what the Ruby class constructor do?
#

module MyConstructor

  def self.included(base)
    def base.my_new(*args, &block)
      instance = allocate
      instance.my_initialize(*args, &block)
      instance
    end
  end

end


class Point
  include MyConstructor

  def my_initialize(x, y)
    @x = x
    @y = y

    yield(self) if block_given?
  end
end


puts Point.my_new(3, 1)
