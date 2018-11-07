require "minitest/autorun"
require_relative "coin_changer.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_hash
    assert_equal(Hash, coin(1).class)
  end

  def test_for_one_penny
    assert_equal({"penny" => 1}, coin(1))
  end

  def test_for_two_penny
    assert_equal({"penny" => 2}, coin(2))
  end

  def test_for_three_penny
    assert_equal({"penny" => 3}, coin(3))
  end

end
