# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example beow), choose the earliest (left-most)
# of the two indices. If no number in `arr` is largr than `arr[i]`,
# return `nil`.
#
#([2,3,4,8], 2).should == 3
#
# Difficulty: 2/5

def nearest_larger(arr, i)
  base = arr[i]
  range = 1
  until range == arr.size
    if arr.max == base
      return nil
      range = arr.size
    elsif arr[i-range] != nil && arr[i-range] > base
      return arr.index(arr[i-range])
      # return arr.index(arr[i-range])
      range = arr.size
    elsif arr[i+range] != nil && arr[i+range] > base
      return arr.index(arr[i+range])
      range = arr.size
    else
      range += 1
    end
  end

end
