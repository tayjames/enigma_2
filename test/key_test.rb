require './test/test_helper'

class KeyTest < MiniTest::Test
  def setup

  end

  def test_key_exists
    assert_instance_of Key, @key 
  end
end
