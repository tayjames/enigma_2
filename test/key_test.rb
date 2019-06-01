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
    #binding.pry
    assert_instance_of Integer, @key.generate.to_i
  end

  def test_group
    skip
    assert_equal 5, @key.group.length
  end
end
