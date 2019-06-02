require 'pry'

class Offset
  attr_reader

  def initialize

  end

  def get_date_info
    date = Date.today.strftime("%d%m%y").to_i
    square = (date ** 2).to_s
    square[-4..-1]
  end

end
