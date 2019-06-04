require './lib/key'
require './lib/offset'
require 'pry'

class Shift
  attr_reader :key, :offset, :a_shift, :b_shift, :c_shift, :d_shift, :shifts

  def initialize(key = Key.new.random_number, offset = Offset.new.date)
    @key = Key.new(key)
    @offset = Offset.new(offset)
    @a_shift = 0
    @b_shift = 0
    @c_shift = 0
    @d_shift = 0
    set_shifts
  end
  #
  # def set_key_and_offset(clave = nil, setoff = nil)
  #   if clave && setoff
  #     @key = clave && @offset = setoff
  #   elsif clave && !setoff
  #     @key = clave && @offset = Offset.new
  #   elsif !clave && setoff
  #     @key = Key.new && @offset = setoff
  #   else
  #     @key = Key.new #&& @offset = Offset.new
  #   end
  # end

  def set_shifts
    @a_shift = @key.a_key + @offset.a_offset
    @b_shift = @key.b_key + @offset.b_offset
    @c_shift = @key.c_key + @offset.c_offset
    @d_shift = @key.d_key + @offset.d_offset
    @shifts = [@a_shift, @b_shift, @c_shift, @d_shift]
  end

end
