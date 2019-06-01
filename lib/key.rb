class Key
  attr_reader :a, :b, :c, :d 

  def initialize(key = nil) #optional, maybe make a conditional that will ket key, if nil.
    @a = rand(9)
    @b = rand(9)
    @c = rand(9)
    @d = rand(9)
  end

end
