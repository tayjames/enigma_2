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
    #expected = Date.today.strftime("%d%m%y")
    assert_equal "3161", @offset.get_date_info
  end

  def test_assign
    #how can i incorparate this into mocks/stubs
    #date = 010119
    #square = 10239461
    #last 4 = 9461
    last_four = 3161
    binding.pry
    @offset.assign(last_four)
    assert_equal 3, @offset.a
    assert_equal 1, @offset.b
    assert_equal 6, @offset.c
    assert_equal 1, @offset.d
  end

end
