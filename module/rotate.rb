module Rotate

  def rotate_letter(letter, shift)
    letra = ""
    if !@character_set.include?(letter)
      letra += letter
    else
      letra += @character_set.rotate(shift)[@character_set.index(letter)]
      #binding.pry
    end
    letra
    end

  end
