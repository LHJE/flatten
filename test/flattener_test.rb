require 'minitest/autorun'
require 'minitest/pride'
require './lib/flattener'

class FlattenerTest < Minitest::Test
  def test_bad_array
    assert_equal [1,2,3,4,5,6,7], Flattener.ruby_flatten([1, 2, 3, [[4], 5], [[[6]]], 7])
  end


end
