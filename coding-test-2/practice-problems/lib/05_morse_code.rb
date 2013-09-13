@@morse = {
"a" => ".-",
"b" => "-...",
"c" => "-.-.",
"d" => "-..",
"e" => ".",
"f" => "..-.",
"g" => "--.",
"h" => "....",
"i" => "..",
"j" => ".---",
"k" => "-.-",
"l" => ".-..",
"m" => "--",
"n" => "-.",
"o" => "---",
"p" => ".--.",
"q" => "--.-",
"r" => ".-.",
"s" => "...",
"t" => "-",
"u" => "..-",
"v" => "...-",
"w" => ".--",
"x" => "-..-",
"y" => "-.--",
"z" => "--.."}

def morse_encode(str) # "cat in hat"
  out = []
  words = str.split(" ") # ["cat","in","hat"]
  words.each{ |word| out << morse_encode_word(word)}
  out.join("  ")
end

def morse_encode_word(word)
  out = []
  letters = word.split(//)
  letters.each{ |l| out << @@morse[l] }
  out.join(" ")
end
