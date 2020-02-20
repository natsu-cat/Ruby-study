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

  def test_bowling_3
    # 連続スペア、連続ストライク追加
    scores = [ [10, 0], [10, 0], [6, 4], [8, 2], [0, 6], [10, 0], [9, 1], [10, 0], [9, 1], [2, 6] ]
    assert_equal 160, bowling(scores)
  end

  def test_bowling_4
    # パーフェクトゲーム、10フレーム目の3投目追加
    scores = [ [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 10, 10] ]
    assert_equal 300, bowling(scores)
  end

  def test_bowling_5
    # 1~4の組み合わせ
    scores = [ [0, 0], [10, 0], [10, 0], [10, 0], [9, 1], [3, 7], [0, 10], [8, 0], [10, 0], [4, 6, 10] ]
    assert_equal 168, bowling(scores)
  end
end