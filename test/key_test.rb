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
    assert_instance_of Integer, @key.a
    assert_instance_of Integer, @key.b
    assert_instance_of Integer, @key.c
    assert_instance_of Integer, @key.d
  end

  def test_group
    assert_equal 5, key.group.length
  end
end
