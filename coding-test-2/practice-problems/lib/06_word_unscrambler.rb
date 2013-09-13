   # word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
   #    .should == ["turn", "runt", "nurt"]

def word_unscrambler(str, words)
  sort = str.split(//).sort.join
  words.select{|word| sort == word.split(//).sort.join }
end
