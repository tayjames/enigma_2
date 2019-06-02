require 'pry'

class Offset
  attr_reader :a, :b, :c, :d

  def initialize
  end

  def get_date_info
    date = Date.today.strftime("%d%m%y").to_i
    square = (date ** 2).to_s
    last_four = square[-4..-1]
  end

  def assign (last_four)
    @a = last_four[0]
    @b = last_four[1]
    @c = last_four[2]
    @d = last_four[3]

  end

end
