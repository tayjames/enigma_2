require './test/test_helper'
require './lib/key'

class KeyTest < MiniTest::Test
  def setup
    @key = Key.new
  end

  def test_key_exists
    assert_instance_of Key, @key
  end
end
