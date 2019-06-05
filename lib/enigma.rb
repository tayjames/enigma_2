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
    key_1 = get_key(key)
    date_1 = get_offset(date)
    shift = Shift.new(key_1.random_number, date_1.date)
    {encryption: rotate_words(message, shift.shifts), key: key_1.random_number, date: date_1.date }
  end

  def decrypt(ciphertext, key, date = nil )
    key_2 = get_key(key)
    date_2 = get_offset(date)
    shift = Shift.new(key_2.random_number, date_2.date)
    {decryption: unrotate_words(ciphertext, shift.shifts), key: key_2.random_number, date: date_2.date }
  end

end
