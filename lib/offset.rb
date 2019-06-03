require 'pry'

class Offset
  attr_reader :a, :b, :c, :d, :date

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
    @a = last_four[0].to_i
    @b = last_four[1].to_i
    @c = last_four[2].to_i
    @d = last_four[3].to_i
    last_four
  end

end
