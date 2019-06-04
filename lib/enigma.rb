require './lib/key'
require './lib/offset'
require './module/rotate'
require 'pry'

class Enigma
  #include Rotate
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def get_key(llave = nil)
    if llave
      key = Key.new(llave)
    else
      key = Key.new
    end

  end

end
