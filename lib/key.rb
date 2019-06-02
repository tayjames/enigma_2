require 'pry'
class Key
  attr_reader :a, :b, :c, :d, :random_number

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    @a = []
    @b = []
    @c = []
    @d = []
    @random_number = 0
    generate
    #@split_digits = @random_number.chars
  end

  def generate
    @random_number = rand(10 ** 5).to_s.rjust(5,'0')
  end

  def digits #now I need to set digits equal to abcd
    digits = @random_number.to_s.chars
    numeric = digits.map do |digit|
      digit.to_i
    end
    numeric 
    #binding.pry
  end

  def assign_keys
    @a << digits[0..1].sum
    @b << digits[1..2].sum
    @c << digits[2..3].sum
    @d << digits[3..4].sum
  end

  def group

  end

end
