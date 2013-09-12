# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

# split str into ary
# define vowels
# can we use comp oper on letters? Yes!
# create seperate arry of only vowels
# compare vowels and return bool
# if true return word : ""

def ordered_vowel_words(str)
  words = str.split
  # ary = str.split(//)
  # vowels = ary.select{|e| e =~ /[aeiou]/}
  out = []
  words.each do |word|
    if ordered_vowel_word?(word)
      out << word
    else
      out << ""
    end
  end
  out.delete_if{|e| e == ""}.join(" ")
end

def ordered_vowel_word?(word)
  ary = word.split(//)
  vowels = ary.select{|e| e =~ /[aeiou]/}
  vowels.each do |e|
    if vowels.index(e) == 0
      next
    elsif e < vowels[vowels.index(e)-1]
      return false
    else
      return true
    end
  end
end
