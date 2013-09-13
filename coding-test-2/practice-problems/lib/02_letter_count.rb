# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

    # letter_count("cats are fun").should == {
    #   "a" => 2,
    #   "c" => 1,
    #   "e"=> 1,
    #   "f" => 1,
    #   "n" => 1,
    #   "r" => 1,
    #   "s" => 1,
    #   "t" => 1,
    #   "u" => 1


def letter_count(str)
  #split string into array
  #create blank hash
  #push arry elem to keys
  #create tally for each elem value

  ary = str.split(//).delete_if{|e| e == " "}
  hash = {}
  ary.each{|e| hash[e] = (ary.count(e))}
  Hash[hash.sort_by{|k,v| v}.reverse]

end
