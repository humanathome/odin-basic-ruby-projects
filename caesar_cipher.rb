def caesar_cipher(sentence, places)

  shifted = sentence.codepoints.map do |character_code|
    if character_code.between?(97, 122)
      (((character_code.ord - 97 + places) % 26) + 97).chr
    elsif character_code.between?(65, 90)
      (((character_code.ord - 65 + places) % 26) + 65).chr
    else
      character_code
    end
  end

  shifted.map(&:chr).join('')
end

p caesar_cipher('What a string!', 5)  # => "Bmfy f xywnsl!"
p caesar_cipher('HmmMM-?', -3)        # =>  "EjjJJ-?"
p caesar_cipher('zzzz\'zzzz', 1)      # =>  "aaaa'aaaa"
