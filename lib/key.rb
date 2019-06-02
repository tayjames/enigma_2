require 'pry'
class Key
  attr_reader :a, :b, :c, :d, :random_number

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    set_numbers(key)
    digits 
  end

  def set_numbers(clave = nil) #clave is key in spanish
    #call this in initialize
    if clave
      @random_number = clave
    else
      generate
    end
  end

  def generate
    @random_number = rand(10 ** 5).to_s.rjust(5,'0')
  end

  def digits #now I need to set digits equal to abcd
    digits = @random_number.to_s.chars
    numeric = digits.map do |digit|
      digit.to_i
    end

  #def assign_keys
    @a = numeric[0..1].sum
    @b = numeric[1..2].sum
    @c = numeric[2..3].sum
    @d = numeric[3..4].sum
    numeric
  end
  #end

end
