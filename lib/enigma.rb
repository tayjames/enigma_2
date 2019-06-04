require './lib/key'
require './lib/offset'
require './lib/shift'
require './module/rotate'
require 'pry'

class Enigma
  include Rotate
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

  def get_offset(setoff = nil)
    if setoff
      offset = Offset.new(setoff)
    else
      offset = Offset.new
    end
  end

  def encrypt(message, key = nil, date = nil)
    key = get_key(key)
    date = get_offset(date)

  end

  def decrypt(ciphertext, key = nil, date = nil )
    key = get_key
    date = get_offset

  end



end
