class Key
  attr_reader :a, :b, :c, :d

  def initialize(key = nil) #optional, maybe make a conditional that will get key, if nil.
    @a = []
    @b = []
    @c = []
    @d = []
  end

  def generate
    random = rand(10 ** 5).to_s.rjust(5,'0')
  end

  def group
    random_numbers = []
    random_numbers.push(@a).push(@b).push(@c).push(@d)

  end

end
