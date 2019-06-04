require 'pry'

class Offset
  attr_reader :a_offset, :b_offset, :c_offset, :d_offset, :date

  def initialize(date = nil)
    set_date(date)
    square_date
  end

  def set_date (clave = nil)
    if clave
      @date = clave
    else
      @date = Date.today.strftime("%d%m%y").to_i
    end
  end

  def square_date
    square = (@date ** 2).to_s
    last_four = square[-4..-1]
    @a_offset = last_four[0].to_i
    @b_offset = last_four[1].to_i
    @c_offset = last_four[2].to_i
    @d_offset = last_four[3].to_i
    last_four
  end

end
