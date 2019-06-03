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

  def test_set_numbers
    #@key.set_numbers("12345")
    assert_equal "12345", @clave.random_number
    assert_instance_of Integer, @key.random_number.to_i
  end

  def test_generate #i don't think that I'm testing this correctly
    assert_instance_of Integer, @key.generate.to_s.to_i #also test for size
    assert_equal 5, @key.random_number.length #also test not same // compare
    #mock(:rn  )
  end

  def test_digits
    expected = [1, 2, 3, 4, 5]
    assert_equal expected, @clave.digits
    assert_equal 5, @key.digits.length
  end

  def test_assign_keys_clave
    #binding.pry
    @clave.digits
    assert_equal 3, @clave.a
    assert_equal 5, @clave.b
    assert_equal 7, @clave.c
    assert_equal 9, @clave.d
  end

  def test_assign_keys_reg
    @key.digits
    assert_instance_of Integer, @key.a
    assert_instance_of Integer, @key.b
    assert_instance_of Integer, @key.c
    assert_instance_of Integer, @key.d
  end
end
