# 1. Two Sum
# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    if hash[target - n]
      return hash[target - n], i
    end
    hash[n] = i
  end
end
