require 'minitest/autorun'
require './lib/bowling'

class BowlingTest < Minitest::Test
  def test_bowling_1
    scores = [ [1, 3], [2, 6], [9, 0], [3, 5], [7, 2], [2, 2], [7, 1], [3, 4], [6, 3], [2, 6] ]
    assert_equal 74, bowling(scores)
  end

  def test_bowling_2
    # 1投目が0, スペア, ストライク追加
    scores = [ [0, 3], [2, 6], [4, 6], [3, 5], [10, 0], [2, 2], [7, 1], [9, 1], [0, 0], [2, 6] ]
    assert_equal 76, bowling(scores)
  end
end