# declare constant and make map of morse to upper-case english characters

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# Create a method to decode a Morse code character & takes a string parameter
def decode_character(morse)
    MORSE_CODE[morse]
end

puts decode_character(".-") # output => "A"

# Create a method to decode a Morse code word & takes a string parameter
def decode_words(morse)
  morse.split(' ').map { |char| decode_character(char) }.join
end

puts decode_words("-- -.--") # output => "MY"



