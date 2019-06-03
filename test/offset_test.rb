require './test/test_helper'
require './lib/key'
require './lib/offset'
require 'pry'

class OffsetTest < MiniTest::Test

  def setup
    @offset = Offset.new
    @setoff = Offset.new(10119) #change this to ddmmyy
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
    assert_instance_of Offset, @setoff
  end

  def test_set_date
    assert_equal 20619, @offset.date #6 digits
    assert_equal 10119, @setoff.date
  end

  def test_square_date
    #expected = Date.today.strftime("%d%m%y")
    #binding.pry
    assert_equal "4161", @setoff.square_date
    assert_equal "3161", @offset.square_date
    #assert_equal ""
  #def test_assign
    #how can i incorparate this into mocks/stubs
    #date = 010119
    #square = 10239461
    #last 4 = 9461
    #last_four = 3161
    #@offset.assign(last_four)
    #@offset.square_date
    assert_equal 3, @offset.a
    assert_equal 1, @offset.b
    assert_equal 6, @offset.c
    assert_equal 1, @offset.d

    assert_equal 4, @setoff.a
    assert_equal 1, @setoff.b
    assert_equal 6, @setoff.c
    assert_equal 1, @setoff.d
    #binding.pry
  end

end
