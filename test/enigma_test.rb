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
    #assert_equal 5, key.random_number.count
    # binding.pry
  end

  def test_get_offset
    assert_instance_of Offset, @enigma.get_offset
  end

  def test_encrypt_given_key_given_date
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
    #assert_equal expected, @enigma.encrypt("OMG")[:encryption].count
  end

  def test_encrypt_given_key_no_date
    expected = {
      encryption: "mfhatasdwm ",
      key: "02715",
      date: "50619"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_decrypt_given_key_given_date
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_decrypt_given_key_no_date
    encrypted = @enigma.encrypt("hello world", "02715")
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "50619"
    }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_rotate_letter
    assert_equal "p", @enigma.rotate_letter("o", 1)
    assert_equal "c", @enigma.rotate_letter("o", 15)
    assert_equal "c", @enigma.rotate_letter("o", 42)
    assert_equal "!", @enigma.rotate_letter("!", 15)
    assert_equal "a", @enigma.rotate_letter(" ", 1)
  end

  def test_rotate_message
    assert_equal "bdfh", @enigma.rotate_message("abcd", [1, 2, 3, 4])
    #assert_equal "abcd", @enigma.rotate_message("abcd", )
    # assert_equal "aaaa", @enigma.rotate_words("    ", [28])
    # assert_equal "!!!!", @enigma.rotate_words("!!!!", [28])
  end

  def test_unrotate_letters
    assert_equal "n", @enigma.unrotate_letter("o", 1)
    assert_equal "o", @enigma.unrotate_letter("o", 27)
    assert_equal "z", @enigma.unrotate_letter("o", 43)
    assert_equal "!", @enigma.unrotate_letter("!", 1)
    assert_equal "z", @enigma.unrotate_letter(" ", 1)
  end

  def test_unrotate_words
    assert_equal "abcd", @enigma.unrotate_message("bdfh", [1, 2, 3, 4])
  end

end
