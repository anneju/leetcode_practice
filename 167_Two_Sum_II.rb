# 167. Two Sum II - Input Array Is Sorted
# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hash = {}
  numbers.each_with_index do |n, i|
    if hash[target - n]
      return [hash[target - n], i + 1]
    else
      hash[n] = i + 1
    end
  end
end
