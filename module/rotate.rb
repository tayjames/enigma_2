module Rotate

  def rotate_letter(letter, shift)
    letra = ""
    if !@character_set.include?(letter)
      letra << letter
    else
      letra << @character_set.rotate(shift)[@character_set.index(letter)]
    end
    letra
  end

  def rotate_message(message, shift)
    string = ''
    message.downcase.chars.map do |letter|
      string << rotate_letter(letter, shift.first)
      shift.rotate!
    end
    string
  end

  def unrotate_letter(letter, shift)
    letra = ''
    if !@character_set.include?(letter)
      letra << letter
    else
      letra << @character_set.rotate(-shift)[@character_set.index(letter)]
    end
    letra
  end

  def unrotate_message(message, shift)
    string = ''
    message.downcase.chars.map do |letter|
      string << unrotate_letter(letter, shift.first)
      shift.rotate!
    end
    string
  end

end
