# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.each_with_object({}) do |num, hash|
    if hash[num]
      return hash[num]
    else
      hash[num] = true
    end
  end
  false
end

contains_duplicate([1,2,3,1])
