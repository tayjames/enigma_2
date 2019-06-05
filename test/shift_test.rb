require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require 'pry'

class ShiftTest < MiniTest::Test
  def setup
    # @key = Key.new #random number
    # @offset = Offset.new #uses today's date
    #
    @shift_0 = Shift.new #generates random key / offset
    #@shift_1 = Shift.new(@key, @offset) #given key / offset
    #@shift_2 = Shift.new(@key) #given key/ random offset
    #@shift_3 = Shift.new(nil, @offset) #random key/ given offset
    #binding.pry
  end

  def test_shift_exists
    assert_instance_of Shift, @shift_0
    #assert_instance_of Shift, @shift_1
    #assert_instance_of Shift, @shift_2
    #assert_instance_of Shift, @shift_3
  end

  def test_shift_attributes
    assert_instance_of Key, @shift_0.key
    assert_instance_of Offset, @shift_0.offset
    
    assert_instance_of Integer, @shift_0.a_shift
    assert_instance_of Integer, @shift_0.b_shift
    assert_instance_of Integer, @shift_0.c_shift
    assert_instance_of Integer, @shift_0.d_shift
  end

  def test_set_shifts
    assert_equal 4, @shift_0.shifts.count
  end

end
