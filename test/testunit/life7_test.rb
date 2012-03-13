require 'test/unit'
require_relative 'life7.rb'

class Life7Test < Test::Unit::TestCase

  # Code executed __before__ each test
  def setup
    @life7 = Life7.new
  end

  def test_should_initially_have_7_lives
    assert_equal  @life7.remaining_lives, 7
  end


  def teardown
        # Code executed __after__ each test
  end


end
