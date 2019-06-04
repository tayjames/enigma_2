require './lib/key'
require './lib/offset'
require 'pry'

class Shift
  attr_reader :key, :offset, :shifts, :a_shift, :b_shift, :c_shift, :d_shift

  def initialize(key = nil, offset = nil)
    #@offset = create_offset()
    @shifts = [@a_shift, @b_shift, @c_shift, @d_shift]
    set_key(key)
    set_offset(offset)
  end

  def set_shifts

  end

  def set_key(clave = nil)
    if clave
      @key = clave
    else
      @key = Key.new
    end
    @key
  end

  def set_offset(llave = nil)
    if llave
      @offset = llave
    else
      generate_offset
    end
  end
  #
  # def generate_key
  #   @key = Key.new.digits
  # end

  def generate_offset
    @offset = Offset.new.date
  end
end
