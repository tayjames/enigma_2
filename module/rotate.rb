module Rotate

  def rotate_letter(letter, shift)
    letra = ""
    if !@character_set.include?(letter)
      letra += letter
    else
      letra += @character_set.rotate(shift)[@character_set.index(letter)]
    end
    letra
  end

  def rotate_words(word, shift)
    str = ''
    word.downcase.chars.map do |letter|
      str << rotate_letter(letter, shift.first)
      shift.rotate!
    end
    str
  end

  def unrotate_letter(letter, shift)
    letra = ""
    if !@character_set.include?(letter)
      letra += letter
    else
      letra += @character_set.rotate(-shift)[@character_set.index(letter)]
    end
    letra
  end

  def unrotate_words(word, shift)
    str = ''
    word.downcase.chars.map do |letter|
      str << unrotate_letter(letter, shift.first)
      shift.rotate!
    end
    str
  end

end
