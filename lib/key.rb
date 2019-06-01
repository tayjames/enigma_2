class Key
  attr_reader :a, :b, :c, :d

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    @a = []
    @b = []
    @c = []
    @d = []
    @random_number = nil
    @split_digits = nil
    generate
    digits
  end

  def generate
    @random = rand(10 ** 5).to_s.rjust(5,'0')
  end

  def digits #now I need to set digits equal to abcd
    @split = @random.chars
  end

  def assign_digits


  end

  def group

  end

end
