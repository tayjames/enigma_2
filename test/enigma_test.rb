require './test/test_helper'
require './lib/key'
require './lib/offset'
require './lib/enigma'
require 'pry'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_enigma_exists
    assert_instance_of Enigma, @enigma
  end

  def test_enigma_character_set
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @enigma.character_set
  end

  def test_get_key
    assert_instance_of Key, @enigma.get_key
  end

  def test_get_offset
    assert_instance_of Offset, @enigma.get_offset
  end

  def test_encrypt
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
    #binding.pry
    #assert_equal expected, @enigma.encrypt("OMG")[:encryption].count
  end

  def test_decrypt
    skip
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_rotate_letter
    assert_equal "p", @enigma.rotate_letter("o", 1)
    assert_equal "c", @enigma.rotate_letter("o", 15)
    assert_equal "c", @enigma.rotate_letter("o", 42)
    assert_equal "!", @enigma.rotate_letter("!", 1)
    assert_equal "a", @enigma.rotate_letter(" ", 1)
  end

  def test_rotate_words
    assert_equal "bdfh", @enigma.rotate_words("abcd", [1, 2, 3, 4])
    # assert_equal "abcd", @enigma.rotate_words("abcd", )
    # assert_equal "aaaa", @enigma.rotate_words("    ", [28])
    # assert_equal "!!!!", @enigma.rotate_words("!!!!", [28])
  end

end
