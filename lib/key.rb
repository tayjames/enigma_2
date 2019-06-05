require 'pry'
class Key
  attr_reader :a_key, :b_key, :c_key, :d_key, :random_number

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    set_random_number(key)
    get_digits
  end

  def set_random_number(clave = nil) #clave is key in spanish
    if clave
      @random_number = clave
    else
      @random_number = rand(10 ** 5).to_s.rjust(5,'0')
    end
  end

  def get_digits
    digits = @random_number.to_s.chars
    numeric = digits.map do |digit|
      digit.to_i
    end
    @a_key = numeric[0..1].join.to_i
    @b_key = numeric[1..2].join.to_i
    @c_key = numeric[2..3].join.to_i
    @d_key = numeric[3..4].join.to_i
    numeric
  end

end
