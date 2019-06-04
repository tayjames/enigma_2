require './test/test_helper'
require './lib/key'
require 'pry'

class KeyTest < MiniTest::Test
  def setup
    @key = Key.new
    @clave = Key.new("12345")
  end

  def test_key_exists
    assert_instance_of Key, @key
    assert_instance_of Key, @clave
  end

  def test_set_random_number
    assert_instance_of Integer, @key.random_number.to_i
    assert_equal "12345", @clave.random_number
  end

  # def test_generate #i don't think that I'm testing this correctly
  #   skip
  #   assert_instance_of Integer, @key.generate.to_s.to_i #also test for size
  #   assert_equal 5, @key.random_number.length #also test not same // compare
  #   #mock(:rn  )
  # end

  def test_get_digits
    expected = [1, 2, 3, 4, 5]
    assert_equal expected, @clave.get_digits
    assert_equal 5, @key.get_digits.length
  end

  def test_assign_clave
    #binding.pry
    @clave.get_digits
    assert_equal 3, @clave.a_key
    assert_equal 5, @clave.b_key
    assert_equal 7, @clave.c_key
    assert_equal 9, @clave.d_key
  end

  def test_assign_keys
    @key.get_digits
    assert_instance_of Integer, @key.a_key
    assert_instance_of Integer, @key.b_key
    assert_instance_of Integer, @key.c_key
    assert_instance_of Integer, @key.d_key
  end
end
