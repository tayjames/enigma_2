require './test/test_helper'
require './lib/key'
require './lib/offset'
require 'pry'

class OffsetTest < MiniTest::Test

  def setup
    @offset = Offset.new
    @setoff = Offset.new(10119)
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
    assert_instance_of Offset, @setoff
  end

  def test_set_date
    assert_equal 40619, @offset.date
    assert_equal 10119, @setoff.date
  end

  def test_square_date_offset
    assert_equal "3161", @offset.square_date
    assert_equal "4161", @setoff.square_date

    assert_equal 3, @offset.a_offset
    assert_equal 1, @offset.b_offset
    assert_equal 6, @offset.c_offset
    assert_equal 1, @offset.d_offset
  end

  def test_square_date_setoff
    assert_equal "3161", @offset.square_date
    assert_equal "4161", @setoff.square_date

    assert_equal 4, @setoff.a_offset
    assert_equal 1, @setoff.b_offset
    assert_equal 6, @setoff.c_offset
    assert_equal 1, @setoff.d_offset
  end
end
