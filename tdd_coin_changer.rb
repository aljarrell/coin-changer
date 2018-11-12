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
    assert_equal({"pennies" => 1}, coin(1))
  end

  def test_for_two_penny
    assert_equal({"pennies" => 2}, coin(2))
  end

  def test_for_three_penny
    assert_equal({"pennies" => 3}, coin(3))
  end

  def test_for_nickel
    assert_equal({"nickels" => 1}, coin(5))
  end

  def test_for_dime
    assert_equal({"dimes" => 1}, coin(10))
  end

  def test_for_quarter
    assert_equal({"quarters" => 1}, coin(25))
  end

  def test_for_fifty_three
    assert_equal({"quarters" => 2, "pennies" => 3}, coin(53))
  end

  def test_for_eighty
    assert_equal({"quarters" => 3, "nickels" => 1}, coin(80))
  end

  def test_for_ninety_nine
    assert_equal({"quarters" => 3, "dimes" => 2, "pennies" => 4}, coin(99))
  end

end
