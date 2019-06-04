require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require 'pry'

class ShiftTest < MiniTest::Test
  def setup
    @key = Key.new #random number
    @offset = Offset.new #uses today's date

    @shift_0 = Shift.new #generates random key / offset
    @shift_1 = Shift.new(@key, @offset) #given key / offset
    @shift_2 = Shift.new(@key) #given key/ random offset
    @shift_3 = Shift.new(nil, @offset) #random key/ given offset
  end

  def test_shift_exists
    assert_instance_of Shift, @shift_0
    assert_instance_of Shift, @shift_1
    assert_instance_of Shift, @shift_2
    assert_instance_of Shift, @shift_3
  end

  def test_shift_attributes
    skip
    assert_equal [@a_shift, @b_shift, @c_shift, @d_shift], @shift_1.shifts
  end

  def test_set_key
    skip
    @shift_0.set_key
    binding.pry
    assert_equal 1, @shift_1.shifts.count
    #assert_equal 5, @shift_0.key.to_s.length #not really key just random number
  end

  def test_set_offset
    skip
    @shift_0.set_offset
    assert_instance_of Integer, @shift_0.offset
    #binding.pry
    assert_equal 5, @shift_0.offset.to_s.length #not really offset, just today's date
  end
end
