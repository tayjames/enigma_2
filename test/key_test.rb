require './test/test_helper'
require 'pry'

class KeyTest < MiniTest::Test
  def setup

  end

  def test_key_exists
    assert_instance_of Key, @key
  end
end
