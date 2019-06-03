require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/enigma'
require 'pry'

class ShiftTest < MiniTest::Test
  def setup
    @shift = Shift.new
  end

  def test_shift_exists
    assert_instance_of Shift, @shift
  end

end
