require './test/test_helper'
require './lib/key'
require 'pry'

class KeyTest < MiniTest::Test
  def setup
    @key = Key.new
  end

  def test_key_exists
    assert_instance_of Key, @key
  end

  def test_key_attributes #is this enough?
    assert_equal [], @key.a
    assert_equal [], @key.b
    assert_equal [], @key.c
    assert_equal [], @key.d
  end

  def test_generate
    assert_instance_of Integer, @key.generate.to_s.to_i
  end

  def test_digits
    binding.pry
    assert_equal 5, @key.digits.length
    #assert_instance_of Integer, @numeric_array.sum
  end

  def test_assign_keys
    skip
    #@key.generate
    @key.assign_keys
    assert @key.a.include?([0..9])
    assert @key.b.include?([0..9])
    assert @key.c.include?([0..9])
    assert @key.d.include?([0..9])
  end

  def test_group
    skip
  end
end
