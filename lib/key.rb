class Key
  attr_reader :a, :b, :c, :d

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    @a = nil
    @b = nil
    @c = nil
    @d = nil
    @random = nil
    generate
  end

  def generate
    @random = rand(10 ** 5).to_s.rjust(5,'0')
  end

  def digits #now I need to set digits equal to abcd
    @random.chars
  end

  def set_digits
    

  end

  def group

  end

end
