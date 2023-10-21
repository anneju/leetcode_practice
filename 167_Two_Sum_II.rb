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

# use left & right pointers
def two_sum2(numbers, target)
  l = 0
  r = numbers.length - 1

  numbers.each_with_index do |num|
    if (numbers[l] + numbers[r]) > target
      r -= 1
    elsif (numbers[l] + numbers[r]) < target
      l += 1
    else
      break [l + 1, r + 1]
    end
  end
end
