require './test/test_helper'
require './lib/key'
require './lib/offset'
require 'pry'

class OffsetTest < MiniTest::Test

  def setup
    @offset = Offset.new
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_get_date_info
    #binding.pry
    assert_equal "3161", @offset.get_date_info
  end

end
